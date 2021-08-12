//SCTP Server: SOCK_SEQPACKET


#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <pthread.h>
#include <netinet/in.h>
#include <netinet/sctp.h>
#include "common.h"
#include <errno.h>
#include <string.h>



int Socket()
{
    /* Create SCTP TCP-Style Socket */
    int sock_fd = socket( AF_INET, SOCK_SEQPACKET, IPPROTO_SCTP );
    
    if (-1 == sock_fd){
        printf("create socket failed: %s \n", strerror(errno));
    }       
    
    return sock_fd;
}

void Bind(int sock_fd)
{
    struct sockaddr_in servaddr;
    int addr_count = 1;

    /* Accept connections from any interface */
    bzero( (void *)&servaddr, sizeof(servaddr) );
    servaddr.sin_family = AF_INET;
    servaddr.sin_addr.s_addr = inet_addr( "127.0.0.1" );
    servaddr.sin_port = htons(MY_PORT_NUM);

    // replace bind with sctp_bindx
    if(-1 == sctp_bindx( sock_fd, (struct sockaddr *)&servaddr, addr_count,  SCTP_BINDX_ADD_ADDR))
    {
        printf("bind socket failed: %s \n", strerror(errno));
        return;
    }
}

int SetSocketOpt(int sock_fd)
{
    struct sctp_event_subscribe evnts;
	int nodelay = 1;

    bzero(&evnts, sizeof(evnts));
    evnts.sctp_data_io_event = 1;

    if(0 != setsockopt(sock_fd, IPPROTO_SCTP, SCTP_EVENTS, &evnts, sizeof(evnts)))
    {
        printf("Error setsockopt(IPPROTO_SCTP): %s\n", strerror(errno));
        return 0;
    }
	/*
    if(0 != setsockopt( sock_fd, SOL_SCTP, SCTP_NODELAY,
                     (const void *)&nodelay, sizeof(nodelay) ))
    {
      printf("[Server]: error setsocketopt SOL_SCTP SCTP_NODELAY, %s\n", strerror(errno));
      return;
    }
	*/

    return 1;
}

void Listen(int sock_fd)
{
    int listenQueLen = 5;
    listen( sock_fd, listenQueLen);
}
int isSocketReadyForReading(int sock_fd)
{
    if (sock_fd <= 0)
    {
        return 0;
    }
	
	fd_set rfds;
    FD_ZERO(&rfds);
    FD_SET(sock_fd, &rfds);

    struct timeval timeout;
    timeout.tv_sec = 0;
    timeout.tv_usec = 1000000;
	if(select(sock_fd + 1, &rfds, 0, 0, &timeout) > 0)
	{
		return 1;
	}
	
    return 0;
}

typedef struct
{
	int socket;
    struct sockaddr_in cliaddr;
    struct sctp_sndrcvinfo sri;
	char readbuf[MAX_BUFFER+1];
}work_thread_data_t;

void * WorkingThread(void *args)
{
    int msg_flags = MSG_NOTIFICATION ;

    char readbuf[MAX_BUFFER+1] = {0};
    struct sockaddr_in cliaddr;
    struct sctp_sndrcvinfo sri;
    socklen_t len;
	int recv_sock = -1;
	int threadId = (int)pthread_self();
	
	work_thread_data_t * pData = (work_thread_data_t*)args;
	if(pData == NULL)
	{
		printf("[Server-WorkingThread( %u )]: The work thread data is invalid!\n", threadId);
		return NULL;
	}
	memcpy(&cliaddr, &pData->cliaddr, sizeof(struct sockaddr_in));
	printf("[Server-WorkingThread( %u )]: Client address : sin_port=%d, sin_addr=%d.\n", 
                threadId, cliaddr.sin_port, cliaddr.sin_addr);
				
	memcpy(&sri, &pData->sri, sizeof(struct sctp_sndrcvinfo));
	printf("[Server-WorkingThread( %u )]: Association_id=%d, stream=%d, ssn=%d, flags=%d, \
                ppid=%d, context=%d, timetolive=%d, tsn=%d, cumtsn=%d .\n", 
                threadId, sri.sinfo_assoc_id, sri.sinfo_stream, sri.sinfo_ssn, sri.sinfo_flags, 
                sri.sinfo_ppid, sri.sinfo_context, sri.sinfo_timetolive, sri.sinfo_tsn, sri.sinfo_cumtsn);
				
	memcpy(readbuf, pData->readbuf, sizeof(readbuf));
	printf("[Server-WorkingThread( %u )]: Will send data: %s !\n", threadId, readbuf);
	
	recv_sock = pData->socket;
	printf("[Server-WorkingThread( %u )]: Socket: %d !\n", threadId, recv_sock);
	if(recv_sock <= 0)
	{
		printf("[Server-WorkingThread( %u )]: The work thread socket (%d) is invalid!\n", threadId, recv_sock);
		return NULL;
	}
	
	while(1)
	{
		sctp_sendmsg(recv_sock, readbuf, strlen(readbuf), 
						&cliaddr, sizeof(cliaddr), sri.sinfo_ppid, sri.sinfo_flags, sri.sinfo_stream, sri.sinfo_timetolive, sri.sinfo_context);
		printf("[Server-WorkingThread( %u )]: sctp_sendmsg: (%s) %s!\n", threadId, readbuf, strerror(errno));
		
		while(1)
		{
			if(! isSocketReadyForReading(recv_sock))
			{
				continue;
			}
			
			bzero( (void *)&readbuf, sizeof(readbuf));
			int rz = sctp_recvmsg(recv_sock, readbuf, sizeof(readbuf),
							  &cliaddr, &len, &sri, &msg_flags);
			if (rz == 0)
			{
				printf("[Server-WorkingThread( %u )]: EOF received!\n", threadId);
			}
			else if(rz < 0)
			{
				printf("[Server-WorkingThread( %u )]: Error sctp_recvmsg: %s\n", threadId, strerror(errno));
			}
			else
			{
				printf("[Server-WorkingThread( %u )]: sctp_recvmsg: %s !\n", threadId, readbuf);					
			}
			break;
		}
	}
	
	return (void*)1;
}

void SctpRecevMsg(int sock_fd)
{
    int msg_flags = MSG_NOTIFICATION ;

    char readbuf[MAX_BUFFER+1];
    struct sockaddr_in cliaddr;
    struct sctp_sndrcvinfo sri;
    socklen_t len;
	
	pthread_t thrdId;
	work_thread_data_t thrdData;
    
    len = sizeof(struct sockaddr_in);
    
    while(1)
    {
        printf("[Server]: wait for message!\n");
        int rz = sctp_recvmsg(sock_fd, readbuf, sizeof(readbuf),
                              &cliaddr, &len, &sri, &msg_flags);
        
        if (rz == 0)
        {
            printf("[Server]: EOF received!\n");
            return;
        }
        else if(rz < 0)
        {
            printf("[Server]: Error sctp_recvmsg: %s\n", strerror(errno));
            return;
        }
        
        printf("[Server]: Message(size = %d): '%s' received, association_id=%d, stream=%d, ssn=%d, flags=%d, \
                ppid=%d, context=%d, timetolive=%d, tsn=%d, cumtsn=%d .\n", 
                rz, readbuf, sri.sinfo_assoc_id, sri.sinfo_stream, sri.sinfo_ssn, sri.sinfo_flags, 
                sri.sinfo_ppid, sri.sinfo_context, sri.sinfo_timetolive, sri.sinfo_tsn, sri.sinfo_cumtsn);
		
		int stream = 1;
		int recv_sock = -1;
		if( (recv_sock = sctp_peeloff(sock_fd, sri.sinfo_assoc_id) ) == -1)
		{
			printf("[Server]: Error sctp_peeloff: %s\n", strerror(errno));
			return;
		}
		
		printf("[Server]: Client address : sin_port=%d, sin_addr=%d.\n", 
                cliaddr.sin_port, cliaddr.sin_addr);
				
		thrdData.socket = recv_sock;
		memcpy(&thrdData.cliaddr, &cliaddr, sizeof(struct sockaddr_in));
		memcpy(&thrdData.sri, &sri, sizeof(struct sctp_sndrcvinfo));
		memcpy(thrdData.readbuf, readbuf, sizeof(readbuf));
		int err = pthread_create(&thrdId, NULL, WorkingThread, &thrdData);
		if(err != 0)
		{
			printf("[Server]: Can't create working thread: %s.\n", strerror(err));
		}
    }
}

void Close(int sock_fd)
{
    close(sock_fd);
    
    printf("[Server]: Close connect socket!\n");
}

int main()
{
    int list_sockfd, conn_sockfd;
  
    list_sockfd = Socket(); 
    Bind(list_sockfd);
    SetSocketOpt(list_sockfd);
    Listen(list_sockfd);
    
    /* Server loop... */
    while( 1 ) {        
        SctpRecevMsg(list_sockfd);
        sleep(1000);
        Close(list_sockfd);
    }

    return 0;
}
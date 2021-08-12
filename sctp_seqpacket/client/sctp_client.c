//SCTP client: SOCK_SEQPACKET

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <sys/time.h>
#include <netinet/in.h>
#include <netinet/sctp.h>
#include <arpa/inet.h>
#include "common.h"
#include <errno.h>

int Socket()
{
    return socket( AF_INET, SOCK_SEQPACKET, IPPROTO_SCTP );
}

void SetSocketOpt(int sock_fd)
{
    struct sctp_initmsg initmsg;
    struct sctp_event_subscribe events;
    int opt = 1;
    int len = sizeof(opt);
	int nodelay = 1;

    /* Specify that a maximum of 5 streams will be available per socket */
    memset( &initmsg, 0, sizeof(initmsg) );
    initmsg.sinit_num_ostreams = 5;
    initmsg.sinit_max_instreams = 5;
    initmsg.sinit_max_attempts = 4;
    if(0 != setsockopt( sock_fd, IPPROTO_SCTP, SCTP_INITMSG,
                     &initmsg, sizeof(initmsg) ))
    {
      printf("[Client]: error setsocketopt IPPROTO_SCTP, %s\n", strerror(errno));
      return;
    }

    /* Enable receipt of SCTP Snd/Rcv Data via sctp_recvmsg */
    memset( (void *)&events, 0, sizeof(events) );
    events.sctp_data_io_event = 1;
    events.sctp_association_event = 1;
    
    if(0 != setsockopt( sock_fd, SOL_SCTP, SCTP_EVENTS,
                     (const void *)&events, sizeof(events) ))
    {
      printf("[Client]: error setsocketopt SOL_SCTP SCTP_EVENTS, %s\n", strerror(errno));
      return;
    }
	
	
    if(0 != setsockopt( sock_fd, SOL_SCTP, SCTP_NODELAY,
                     (const void *)&nodelay, sizeof(nodelay) ))
    {
      printf("[Client]: error setsocketopt SOL_SCTP SCTP_NODELAY, %s\n", strerror(errno));
      return;
    }
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

void SendMsg(int sock_fd)
{
    char buf[MAX_BUFFER+1];
	int msg_flags = MSG_NOTIFICATION;
    struct sctp_sndrcvinfo sinfo;
    struct sockaddr_in servaddr;
	socklen_t len;
	int count = 0;
    
    len = sizeof(struct sockaddr_in);
    
    bzero( (void *)&servaddr, sizeof(servaddr));
	bzero( (void *)&sinfo, sizeof(sinfo));
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(MY_PORT_NUM);
    servaddr.sin_addr.s_addr = inet_addr( "127.0.0.1" );
    
	sinfo.sinfo_assoc_id = (sctp_assoc_t)getpid ();
	printf("[Client]: PID=%d, sizeof(sctp_assoc_t)=%d, sinfo_assoc_id=%d!\n", (int)getpid (), sizeof(sctp_assoc_t), sinfo.sinfo_assoc_id);
	while(1)
	{
        printf("\n[Client]: Input message to send to server!\n");
        if(NULL != gets(buf))
        {
            int stream = 1;
            sctp_sendmsg(sock_fd, buf, strlen(buf), 
                        &servaddr, sizeof(servaddr), 0, 0, stream, &sinfo, 0);
						
			printf("[Client]: Waiting for receive data from server!\n");
			count = 3;
            while(count > 0)
			{
				if(! isSocketReadyForReading(sock_fd))
				{
					count --;
					printf("[Client]: No data come from server: %d!\n", count);
					continue;
				}
				count = 0;
				
			    bzero( (void *)&buf, sizeof(buf));
				int rz = sctp_recvmsg(sock_fd, buf, sizeof(buf),
								  &servaddr, &len, &sinfo, &msg_flags);
				if (rz == 0)
				{
					printf("[Client]: EOF received!\n");
				}
				else if(rz < 0)
				{
					printf("[Client]: Error sctp_recvmsg: %s\n", strerror(errno));
				}
				else
				{
					printf("[Client]: sctp_recvmsg: %s !\n", buf);
				}
				break;
			}
        }
        else
        {
            break;
        }
	}
}

void Close(int sock_fd)
{
    char buf[20];
    printf("[Client]: Enter to close socket!\n");
    if(NULL != gets(buf))
    {
        /* Close our socket and exit */
        close(sock_fd);
        printf("[Client]: Close socket!\n");

        return;
    }
}

int main()
{
    int sock_fd;
    /* Create an SCTP TCP-Style Socket */
    sock_fd = Socket();
    SetSocketOpt(sock_fd);
    
    SendMsg(sock_fd);
    Close(sock_fd);
    return 0;
}
#include <sys/types.h>
#include <sys/socket.h>
#include <stdio.h>
#include <sys/un.h>
#include <unistd.h>

typedef struct _server_data
{
    dword  port;
    char   ip_addr[32];
}server_data_t;


#define MAX_SERVER_NUMBER 10
#define MAX_RECV_BUFFER   1024 * 4
#define MAX_CLIENT_NUMBER 10

server_data_t g_server_data[MAX_SERVER_NUMBER] = {0};

static int single_client_thread(void *args)
{
	int sockfd, recvbytes, res, flags, error, retval;
	socklen_t len;
	fd_set rset,wset;
	struct sockaddr serv_addr; 
	char * sendData;
	char recvbuf[MAX_RECV_BUFFER] = {0};
	
	server_data_t * server_data = 
    //Create socket file descriptor
    if((sockfd = socket(AF_INET, SOCK_STREAM, 0)) == -1)
	{
		perror("socket create failed");
		return 1;
	}

	serv_addr.sin_family = AF_INET;
	serv_addr.sin_port = htons(server_data->serv_port);
	serv_addr.sin_addr.s_addr = inet_addr(server_data->serv_addr);
	bzero(&(serv_addr.sin_zero),8);
	flags = fcntl(sockfd, F_GETFL, 0);
	fcntl(sockfd, F_SETFL,flags | O_NONBLOCK);// Set non-block mode

	if( (res = connect(sockfd, (struct sockaddr *)&serv_addr, sizeof(struct sockaddr)) ) < 0)
	{
		if(errno != EINPROGRESS)
		{
			return 1;
		}
	}
	
	FD_ZERO(&rset);
	FD_SET(sockfd,&rset);
	wset = rset;
	if( ( res = select(sockfd + 1, NULL, &wset, NULL, &tval) ) <= 0)
	{
		perror("connect time out/n");
		close(sockfd);
		return 1;
	}
	else
	{
		len = sizeof(error);
		getsockopt(sockfd, SOL_SOCKET, SO_ERROR, &error, &len);
		if(error)
		{
			fprintf(stderr, "Error in connection() %d - %s/n", error, strerror(error));
			return 1;
		}
	}
	
	for(;;)
	{
		if( (retval = send(sockfd, sendData, strlen(sendData),0) ) == -1 )
		{
			perror("send error!");
			close(sockfd);
			return 1;
		}
		if( ( retval = select(sockfd+1,&rset,NULL, NULL,&tval)) <= 0 )//rset没有使用过，不用重新置为sockfd
		{
			perror("receive time out or connect error");
			close(sockfd);
			return -1;
		}
		if((recvbytes = recv(sockfd, recvbuf, MAX_RECV_BUFFER, 0)) == -1)
		{
			perror("recv error!");
			close(sockfd);
			return 1;
		}
		printf("receive num %d/n", recvbytes);
		printf("%s/n", recvbuf);
		
		sleep(10);
	}
	
	close(sockfd);
	
	return 1;
}

int get_server_data()
{
}

int get_msg_data()
{
}

int get_client_number()
{
}

int read_cfg_file()
{
}

int create_all_clients()
{
    int index = 0;
	int err;
    pthread_t ntid[MAX_CLIENT_NUMBER];
	server_data_t srv_data;
	
	srv_data.port = 63245;
	memcpy(srv_data.ip_addr, "10.69.111.120", sizeof(srv_data.ip_addr));
	for(; index < MAX_CLIENT_NUMBER; index ++)
	{
	    err = pthread_create(&ntid[index], NULL, single_client_thread, &srv_data);
		if(err != 0)
		{
		    printf("Can't create client thread: %s.\n", strerror(err));
		}
		printf("Client thread: %u.\n", ntid[index]);
	}
	
	return 1;
}

int main(int argc, char** argv)
{
	int index = 0;

    create_all_clients();

	//Handle cmd line
	
    return 1;
}
/**
 * @brief - Send a message, using advanced SCTP features
 * The sctp_sendmsg() function allows you to send extra information to a remote application.
 * Using advanced SCTP features, you can send a message through a specified stream,
 * pass extra opaque information to a remote application, or define a timeout for the particular message.
 *
 * @header - #include <netinet/sctp.h>
 *
 * @return ssize_t - The number of bytes sent, or -1 if an error occurs (errno is set).
 *
 * @ERRORS
 * EBADF
 *     An invalid descriptor was specified.
 * EDESTADDRREQ
 *     A destination address is required.
 * EFAULT
 *     An invalid user space address was specified for a parameter.
 * EMSGSIZE
 *     The socket requires that the message be sent atomically, but the size of the message made this impossible.
 * ENOBUFS
 *     The system couldn't allocate an internal buffer. The operation may succeed when buffers become available.
 * ENOTSOCK
 *     The argument s isn't a socket.
 * EWOULDBLOCK
 *     The socket is marked nonblocking and the requested operation would block.
 */
#include <stdio.h>  
#include <stdlib.h>  
#include <string.h>  
#include <unistd.h>  
#include <time.h>  
#include <fcntl.h>
#include <sys/socket.h>  
#include <sys/types.h>  
#include <sys/stat.h>
#include <netinet/in.h>  
#include <netinet/sctp.h>
#include <arpa/inet.h>
//#include "common.h"  
#define MAX_BUFFER  1024  
#define MY_PORT_NUM 19000  
#define LOCALTIME_STREAM    0  
#define GMT_STREAM   1  
#define MAX_CLIENT_NUM 1024

int main(int argc, char *argv[], char *envp[])
{
    int listenSock, ret;
    int connSock[MAX_CLIENT_NUM] = {0};
    int client_id = 0;
    struct sockaddr_in servaddr;
    char buffer[MAX_BUFFER + 1];
    time_t currentTime;

    /* Create SCTP TCP-Style. Socket */
    listenSock = socket( AF_INET, SOCK_STREAM, IPPROTO_SCTP ); // 注意这里的IPPROTO_SCTP

    int flags = fcntl(listenSock, F_GETFL); // NOLINT
    if (flags == -1)
    {
        printf("Could not get SCTP socket mode.\n");
        return 0;
    }
/*
    flags |= O_NONBLOCK;
    flags = fcntl(listenSock, F_SETFL, flags); // NOLINT
    if (flags == -1)
    {
        printf("Could not set SCTP socket into non-blocking mode.\n");
        return 0;
    }

    int enable = 1;
    if(setsockopt(listenSock, SOL_SOCKET, SO_REUSEADDR, &enable, sizeof(int)) < 0)
    {
        printf("setsockopt(SO_REUSEADDR) failed.\n");
        return 0;
    }
*/
    /* Accept connections from any interface */
    bzero( (void *)&servaddr, sizeof(servaddr) );
    servaddr.sin_family = AF_INET;
    servaddr.sin_addr.s_addr = inet_addr( "127.0.0.1" );
    servaddr.sin_port = htons(MY_PORT_NUM);
    /* Bind to the wildcard address (all) and MY_PORT_NUM */
    ret = bind( listenSock,
                (struct sockaddr *)&servaddr, sizeof(servaddr) );
    printf("bind tcpSock = %d, ret = %d .\n", listenSock, ret);
    /* Place the server socket into the listening state */
    listen( listenSock, 5 );
    /* Server loop... */
    
    while( 1 )
    {
        /* Await a new client connection */
        connSock[client_id] = accept( listenSock, (struct sockaddr *)NULL, NULL );
        printf("Accept a new client connection, socket id:%d, client_id=%d.\n", connSock[client_id], client_id);
        /* New client socket has connected */
        /* Grab the current time */
        time(&currentTime);
        /* Send local time on stream 0 (local time stream) */
        snprintf( buffer, MAX_BUFFER, "%s\n", ctime(&currentTime) );
        printf("Ready send msg to client on stream 0.\n");
        ret = sctp_sendmsg( connSock[client_id],
                            (void *)buffer, (size_t)strlen(buffer),
                            NULL, 0, 0, 0, LOCALTIME_STREAM, 0, 0 );
        /* Send GMT on stream 1 (GMT stream) */
        snprintf( buffer, MAX_BUFFER, "%s\n",
                  asctime( gmtime( & currentTime ) ) );
        printf("Ready send msg to client on stream 1.\n");
        ret = sctp_sendmsg( connSock[client_id],
                            (void *)buffer, (size_t)strlen(buffer),
                            NULL, 0, 0, 0, GMT_STREAM, 0, 0 );
        
//#if 0    
        int selectVal = -1;
        fd_set rfds;
        FD_ZERO(&rfds);
        FD_SET(connSock[client_id], &rfds);
        
        struct timeval timeout;
        timeout.tv_sec = 0;
        timeout.tv_usec = 1000;
        for(;;)
        {
            selectVal = select(connSock[client_id] + 1, &rfds, NULL, NULL, &timeout);
            if(selectVal > 0)
            {
                /* Expect two messages from the peer */
                int i = 0,in = 0,flags = 0;
                struct sctp_sndrcvinfo sndrcvinfo;
                for (i = 0 ; i < 2 ; i++)
                {
                    in = sctp_recvmsg( connSock[client_id], (void *)buffer, sizeof(buffer),
                                       (struct sockaddr *)NULL, 0,
                                       &sndrcvinfo, &flags );
                    /* Null terminate the incoming string */
                    buffer[in] = 0;
                    if (sndrcvinfo.sinfo_stream == LOCALTIME_STREAM)
                    {
                        printf("Receive from client:(Local) %s\n", buffer);
                        in = sctp_sendmsg( connSock[client_id],
                                (void *)buffer, (size_t)strlen(buffer),
                                NULL, 0, 0, 0, LOCALTIME_STREAM, 0, 0 );
                    }
                    else if (sndrcvinfo.sinfo_stream == GMT_STREAM)
                    {
                        printf("Receive from client:(GMT  ) %s\n", buffer);
                        in = sctp_sendmsg( connSock[client_id],
                                (void *)buffer, (size_t)strlen(buffer),
                                NULL, 0, 0, 0, LOCALTIME_STREAM, 0, 0 );
                    }
                }
            }
            sleep(1);
        }
//#endif
        /* Close the client connection */
        close( connSock[client_id] );
        client_id ++;
    }
    return 0;
}

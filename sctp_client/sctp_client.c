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
#include <pthread.h>
#include <errno.h>


#define MAX_BUFFER  1024  
#define MY_PORT_NUM 38472
#define LOCALTIME_STREAM    0  
#define GMT_STREAM   1  
#define MAX_THREAD_NUM 1
#define MAX_STREAM_NUM 8
#define SERVER_PORT_NUM 19000


typedef struct __client_thread
{
    unsigned short stream_id;
}client_thread_t;

static void * client_thread(void *arg)
{
    int connSock, in, i, flags;
    struct sockaddr_in servaddr;
    struct sctp_sndrcvinfo sndrcvinfo;
    struct sctp_event_subscribe events;
    struct sctp_initmsg initMsg;
    struct sctp_assocparams associationSettings;
    struct sctp_paddrparams peerAddressSettings;
    struct sctp_rtoinfo retransmissionTimeoutSettings;
    struct sctp_sack_info delayAcknowledgementTimerSettings;
    struct sctp_assoc_value maximumNumberBurst;
    char buffer[MAX_BUFFER + 1];
    client_thread_t thrd_data;
    memcpy(&thrd_data, (client_thread_t*)arg, sizeof(client_thread_t));
    printf("*******************   %u  *****************************************\n", (unsigned int)pthread_self());
    printf("stream_id = %d, thread_id =%u.\n", thrd_data.stream_id, (unsigned int)pthread_self());

    /* Create an SCTP TCP-Style. Socket */
    connSock = socket( AF_INET, SOCK_SEQPACKET, IPPROTO_SCTP );
    if (connSock < 0)
    {
        printf("SCTP socket creation failure. Error: %d.\n", errno);
        return NULL;
    }
    
    int enable = 1;
    if(setsockopt(connSock, SOL_SOCKET, SO_REUSEADDR, &enable, sizeof(int)) < 0)
    {
        printf("setsockopt(SO_REUSEADDR) failed.\n");
        return NULL;
    }
    
    /* Specify the peer endpoint to which we'll connect */
    bzero( (void *)&servaddr, sizeof(servaddr) );
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(SERVER_PORT_NUM);
    servaddr.sin_addr.s_addr = inet_addr( "127.0.0.1" );
    /* Bind socket 
    int bindStatus = sctp_bindx(connSock, (struct sockaddr*)&servaddr, 1, SCTP_BINDX_ADD_ADDR);
    if (bindStatus == -1)
    {
        printf("SCTP binding failure. Error: %d.\n", errno);
        return;
    }*/
    
    /* Connect to the server */
    int connectStatus = sctp_connectx( connSock, (struct sockaddr *)&servaddr, 1, NULL );
    if (0 != connectStatus)
    {
        printf("SCTP connection failure. Error: %d.\n", errno);
        return NULL;
    }
//#if 0    
    /* Set Socket Options */
    memset(&associationSettings, 0, sizeof(associationSettings));
    memset(&peerAddressSettings, 0, sizeof(peerAddressSettings));
    memset(&retransmissionTimeoutSettings, 0, sizeof(retransmissionTimeoutSettings));
    memset(&delayAcknowledgementTimerSettings, 0, sizeof(delayAcknowledgementTimerSettings));
    memset(&maximumNumberBurst, 0, sizeof(maximumNumberBurst));
    peerAddressSettings.spp_flags = SPP_HB_ENABLE;
    peerAddressSettings.spp_hbinterval = 5000;
    peerAddressSettings.spp_pathmaxrxt = 1;
    retransmissionTimeoutSettings.srto_max = 2000;
    maximumNumberBurst.assoc_value = 4096;
    if (setsockopt(connSock, SOL_SCTP, SCTP_ASSOCINFO, &associationSettings, sizeof(associationSettings)) != 0 ||
        setsockopt(connSock, SOL_SCTP, SCTP_PEER_ADDR_PARAMS, &peerAddressSettings, sizeof(peerAddressSettings)) != 0 ||
        setsockopt(connSock, SOL_SCTP, SCTP_RTOINFO, &retransmissionTimeoutSettings, sizeof(retransmissionTimeoutSettings)) != 0 ||
        setsockopt(connSock, SOL_SCTP, SCTP_DELAYED_SACK,  &delayAcknowledgementTimerSettings, sizeof(delayAcknowledgementTimerSettings)) != 0 ||
        setsockopt(connSock, SOL_SCTP, SCTP_MAX_BURST, &maximumNumberBurst, sizeof(maximumNumberBurst)) != 0)
    {
        printf("SCTP socket setup failure. Error: %d.\n", errno);
        return NULL;
    }
//#endif    
    /* Set initial message */
    memset( (void *)&initMsg, 0, sizeof(initMsg) );
    initMsg.sinit_num_ostreams = MAX_STREAM_NUM;
    initMsg.sinit_max_instreams = MAX_STREAM_NUM;
    if (setsockopt(connSock, IPPROTO_SCTP, SCTP_INITMSG, &initMsg, sizeof(initMsg)) == -1)
    {
        printf("Setting SCTP initial message failure. Error: %d.\n", errno);
        return NULL;
    }
    
    /* Enable receipt of SCTP Snd/Rcv Data via sctp_recvmsg */
    memset( (void *)&events, 0, sizeof(events) );
    events.sctp_data_io_event = 1;
    events.sctp_association_event = 1;
    if (setsockopt( connSock, SOL_SCTP, SCTP_EVENTS,(const void *)&events, sizeof(events) ) == -1)
    {
        printf("Setting SCTP event subscribe failure. Error: %d.\n", errno);
        return NULL;
    }
    
    int selectVal = -1;
    fd_set rfds;
    FD_ZERO(&rfds);
    FD_SET(connSock, &rfds);
    
    struct timeval timeout;
    timeout.tv_sec = 0;
    timeout.tv_usec = 1000;
    for(;;)
    {
        selectVal = select(connSock + 1, &rfds, NULL, NULL, &timeout);
        if(selectVal > 0)
        {
            /* Expect two messages from the peer */
            for (i = 0 ; i < 2 ; i++)
            {
                in = sctp_recvmsg( connSock, (void *)buffer, sizeof(buffer),
                                   (struct sockaddr *)NULL, 0,
                                   &sndrcvinfo, &flags );
                /* Null terminate the incoming string */
                buffer[in] = 0;
                if (sndrcvinfo.sinfo_stream == LOCALTIME_STREAM)
                {
                    printf("(Local) %s\n", buffer);
                    in = sctp_sendmsg( connSock,
                            (void *)buffer, (size_t)strlen(buffer),
                            NULL, 0, 0, 0, LOCALTIME_STREAM, 0, 0 );
                }
                else if (sndrcvinfo.sinfo_stream == GMT_STREAM)
                {
                    printf("(GMT  ) %s\n", buffer);
                    in = sctp_sendmsg( connSock,
                            (void *)buffer, (size_t)strlen(buffer),
                            NULL, 0, 0, 0, LOCALTIME_STREAM, 0, 0 );
                }
            }
        }
        sleep(1);
    }
    /* Close our socket and exit */
    close(connSock);
    printf("*******************   %u  *****************************************\n", (unsigned int)pthread_self());
    return NULL;
}

int main(int argc, char *argv[], char *envp[])
{
    pthread_t thread;
    client_thread_t thrd_data;
    int index = 0;
/*
    struct sockaddr_in servaddr;
    int tcpSock = socket( AF_INET, SOCK_STREAM, IPPROTO_TCP );

    bzero( (void *)&servaddr, sizeof(servaddr) );
    servaddr.sin_family = AF_INET;
    servaddr.sin_addr.s_addr = inet_addr( "127.0.0.1" );
    servaddr.sin_port = htons(MY_PORT_NUM_1);

    int ret = bind(tcpSock, (struct sockaddr *)&servaddr, sizeof(servaddr) );
    printf("tcpSock = %d, ret = %d .\n", tcpSock, ret);
*/    
    for(; index<MAX_THREAD_NUM; index++)
    {
        thrd_data.stream_id = index;
        pthread_create(&thread, NULL, client_thread, &thrd_data);
        sleep(1);
    }
    sleep(1000);
    return 1;
}


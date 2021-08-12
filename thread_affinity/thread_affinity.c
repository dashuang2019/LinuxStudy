#define _GNU_SOURCE
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
#include <sched.h>
#include <errno.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <syslog.h> 




#define MAX_THREAD_NUM 1


#define LOCKFILE "./daemon.pid"   
#define LOCKMODE (S_IRUSR|S_IWUSR|S_IRGRP|S_IROTH)   

int lockfile(int fd)   
{   
    struct flock fl;   
    fl.l_type = F_WRLCK;   
    fl.l_start = 0;   
    fl.l_whence = SEEK_SET;   
    fl.l_len = 0;   
    return(fcntl(fd, F_SETLK, &fl));   
} 

int already_running(void)   
{   
    int fd;   
    char buf[16];   
    fd = open(LOCKFILE,O_RDWR|O_CREAT, LOCKMODE);   
    if(fd < 0)   
    {
        printf("Can't open file...\n"); 
        syslog(LOG_ERR, "can't open %s: %s", LOCKFILE, strerror(errno));   
        exit(1);   
    }   
    if(lockfile(fd) < 0)   
    {   
        if (errno == EACCES || errno == EAGAIN)   
        {   
            close(fd);   
            return 1;   
        }
        printf("Can't lock file...\n"); 
        syslog(LOG_ERR,"can't lock %s: %s", LOCKFILE, strerror(errno));   
        exit(1);   
    }   
    ftruncate(fd,0);   
    sprintf(buf,"%ld",(long)getpid());   
    write(fd,buf,strlen(buf) + 1);   
    return 0;   
} 


typedef struct __client_thread
{
    unsigned short cpu_id;
}client_thread_t;

int g_thread_exit_flag[128] = {0};
void set_thread_affinity(int cpu_id)
{
    int i, cpus = 0;
    cpu_set_t mask;
    cpu_set_t get;

    cpus = sysconf(_SC_NPROCESSORS_CONF);
    printf("This system has %d processor(s)\n", cpus);
    cpus=1;
    CPU_ZERO(&mask);
    CPU_SET(cpu_id, &mask);  

    /* 设置cpu 亲和性(affinity)*/
    if (pthread_setaffinity_np(pthread_self(), sizeof(mask), &mask) < 0) {
        printf("set thread affinity failed\n");
    }   
    
    /* 查看cpu 亲和性(affinity)*/
    CPU_ZERO(&get);
    if (pthread_getaffinity_np(pthread_self(), sizeof(get), &get) < 0) {
        printf("get thread affinity failed\n");
    }   

    /* 查看当前线程所运行的所有cpu*/
    for (i = 0; i < cpus; i++) {
        if (CPU_ISSET(i, &get)) {
            printf("this thread %d is running in processor %d\n", (int)pthread_self(), i); 
        }   
    }   
}

void * client_thread(void *arg)
{
    int i = 0;
    int loop_cnt = 0;
#define MAX_LOOP_CNT (1000*1000*1000)
    client_thread_t thrd_data;
    memcpy(&thrd_data, (client_thread_t*)arg, sizeof(client_thread_t));
    printf("******************* client_thread start  %u  *****************************************\n", (unsigned int)pthread_self());
    printf("cpu_id = %d, g_thread_exit_flag =%u.\n", thrd_data.cpu_id, g_thread_exit_flag[thrd_data.cpu_id]);
    
    for (i = 0; i < thrd_data.cpu_id; i++) {
        printf("Exit flag: g_thread_exit_flag[%d] = %d\n", i, g_thread_exit_flag[i]); 
    } 

    set_thread_affinity(thrd_data.cpu_id);
    
    /* While loop to consume CPU resource */
    while(1)
    {
        if(g_thread_exit_flag[thrd_data.cpu_id])
        {
            printf("If true, client_thread: g_thread_exit_flag[%d] = %d\n", thrd_data.cpu_id, g_thread_exit_flag[thrd_data.cpu_id]);
            break;
        }
        loop_cnt ++;
        if(loop_cnt > MAX_LOOP_CNT)
        {
            //usleep(1);
        }
    }
    
    printf("******************* client_thread exit  %u  *****************************************\n", (unsigned int)pthread_self());
    return (void*)(1);
}

#define BITS_PER_BYTE		8
#define BITS_PER_TYPE(type)	(sizeof(type) * BITS_PER_BYTE)
#define __KERNEL_DIV_ROUND_UP(n, d) (((n) + (d) - 1) / (d))
#define BITS_TO_LONGS(nr)	__KERNEL_DIV_ROUND_UP(nr, BITS_PER_TYPE(long))
#define DECLARE_BITMAP(name,bits) \
	unsigned long name[BITS_TO_LONGS(bits)]

#define NR_CPUS 1

/* Don't assign or return these: may not be this big! */
typedef struct cpumask { DECLARE_BITMAP(bits, NR_CPUS); } cpumask_t;

int main(int argc, char *argv[], char *envp[])
{
    pthread_t thread;
    client_thread_t thrd_data;
    int index = 0;
    int cpus = 0;
    int val = already_running();   
    if(val == 0)   
    {   
        printf("sart to running...\n");   
    }   
    else  
    {   
        printf("alredy running...\n");   
        exit(0);   
    } 

    memset(g_thread_exit_flag, 0, sizeof(g_thread_exit_flag));
    cpus = sysconf(_SC_NPROCESSORS_CONF);
    cpus = 1;
    for(; index<cpus; index++)
    {
        thrd_data.cpu_id = index;
        g_thread_exit_flag[index] = 0;
        pthread_create(&thread, NULL, client_thread, &thrd_data);
        sleep(10);
        g_thread_exit_flag[index] = 1;
        printf("main after sleep: g_thread_exit_flag[%d]=%d\n", index, g_thread_exit_flag[index]);
    }
    sleep(100000);
    return 1;
}


#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <inttypes.h>
#include <netinet/in.h>
#include <string.h>
#include <ifaddrs.h>
#include <netdb.h>
#include <sys/types.h>  

#include <sys/time.h>
#include <sys/resource.h>
#include <syslog.h>


int  get_local_ipv4_addr__r(char * if_name, char  ipv4_addr[50])
{
    struct ifaddrs *ifaddr, *ifa;
    int s;
    sa_family_t addr_family;
    int ec = 0;
    int cmp_str;
    char hbuf[NI_MAXHOST] = {0};
    char ip_addr[50] = "192.169.123.23";

    if (!if_name)
    {
        ec = -1;

        goto out;
    }
    if(!ipv4_addr )
    {
        ec = -4;
        printf("get_local_ipv4_addr__r ipv4_addr is empty.\n");
        goto out;
    }
    if (getifaddrs(&ifaddr) == -1)
    {
        ec = -2;

        goto out;
    }

    printf("get_local_ipv4_addr__r begin.\n");
    /* Walk through linked list, maintaining head pointer so we
       can free list later */

    for (ifa = ifaddr; ifa != NULL; ifa = ifa->ifa_next)
    {
        if (ifa->ifa_addr == NULL)
            continue;
        if(!ipv4_addr)
        {
            ec = -4;
            printf("get_local_ipv4_addr__r ipv4_addr is empty.222\n");
            goto out;
        }
        printf("get_local_ipv4_addr__r strcmp before strcmp ipv4_addr=%s,0x%x.\n", ipv4_addr,ipv4_addr);
        addr_family = ifa->ifa_addr->sa_family;

            printf("get_local_ipv4_addr__r strcmp before addr_family=%d, ifa->ifa_name=%s, if_name=%s.\n", addr_family, ifa->ifa_name, if_name);
        cmp_str = strcmp(ifa->ifa_name, if_name);

        if(!ipv4_addr)
        {
            ec = -4;
            printf("get_local_ipv4_addr__r ipv4_addr is empty.11 222\n");
            goto out;
        }     
        printf("get_local_ipv4_addr__r strcmp after strcmp ipv4_addr=%s,0x%x.\n", ipv4_addr,ipv4_addr);
        printf("get_local_ipv4_addr__r strcmp before addr_family=%d, cmp_str=%d.\n", addr_family, cmp_str);
        {
            if(ipv4_addr == NULL)
                printf("get_local_ipv4_addr__r ipv4_addr is empty.444\n");
            printf("get_local_ipv4_addr__r strcmp before getnameinfo ipv4_addr=%s,0x%x, len=%d.\n", ipv4_addr,ipv4_addr, NI_MAXHOST);
            s = getnameinfo(ifa->ifa_addr, sizeof(struct sockaddr_in),
                            ipv4_addr, NI_MAXHOST, NULL, 0, NI_NUMERICHOST);

            printf("get_local_ipv4_addr__r strcmp after  host=%s, s=%d, ipv4_addr=%s, 0x%x.\n", hbuf, s, ipv4_addr,ipv4_addr);
            printf("get_local_ipv4_addr__r memcpy before  ip_addr=%s,0x%x.\n", ip_addr,ip_addr);
            memcpy(ip_addr, hbuf, 50);
            printf("get_local_ipv4_addr__r memcpy after  ip_addr=%s,0x%x.\n", ip_addr,ip_addr);
            if (s)
            {
                ec = -3;
            }

        }

    }
freeout:
            printf("get_local_ipv4_addr__r freeout ec=%d.\n", ec);
    freeifaddrs(ifaddr);
out:
            printf("get_local_ipv4_addr__r end ec=%d.\n", ec);
    return ec;
}


int main(int argc, char* argv[])
{
	pid_t myself;
	int  i;
	int  run_cnt = 0;

    system("/root/mem_usage.sh &");

    char ipv4_addr[50] = {0};
    printf("\n before call ipv4_addr = %s, addr is 0x%x.\n\n", ipv4_addr, &ipv4_addr);
    get_local_ipv4_addr__r("bond0", &ipv4_addr[0]);
    printf("\n after call ipv4_addr = %s, addr is 0x%x.\n\n", ipv4_addr, &ipv4_addr);
    printf("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\n");	
	
	myself = getpid();
	setpriority(PRIO_PROCESS, myself, -10);
	

	while(1)
	{	
            if(run_cnt == 0)
            {   
    	        syslog(LOG_INFO, "TEST_CPU start." );
	    }
            for(i = 0; i < 10000; i++);
            usleep(1000);
            run_cnt ++;
            if(run_cnt == 1000)
            {
                syslog(LOG_INFO, "TEST_CPU stop." );
                run_cnt = 0;
	    }
	}
	
	return 0;
}

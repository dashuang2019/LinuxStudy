#include "test_fork.h"
#if 0
#include <iostream>
#include <stdio.h>
#include <unistd.h>
#include <dirent.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <string.h>
using namespace std;

/***** Global Variables *****/
char dir[100] = "/home";
int const MAX_STR_LEN = 200;

/* Show all files under dir_name , do not show directories ! */
void showAllFiles(const char* dir_name)
{
    // check the parameter !
    if (NULL == dir_name)
    {
        cout << " dir_name is null ! " << endl;
        return;
    }

    // check if dir_name is a valid dir
    struct stat s;
    lstat(dir_name, &s);
    if (!S_ISDIR(s.st_mode))
    {
        cout << "dir_name is not a valid directory !" << endl;
        return;
    }

    struct dirent* filename;    // return value for readdir()
    DIR* dir;                   // return value for opendir()
    dir = opendir(dir_name);
    if (NULL == dir)
    {
        cout << "Can not open dir " << dir_name << endl;
        return;
    }
    cout << "Successfully opened the dir !" << endl;

    /* read all the files in the dir ~ */
    while ((filename = readdir(dir)) != NULL)
    {
        // get rid of "." and ".."
        if (strcmp(filename->d_name, ".") == 0 ||
            strcmp(filename->d_name, "..") == 0)
            continue;
        cout << filename->d_name << endl;
    }
}
int main()
{
    // 测试
    showAllFiles( dir );
    return 0;
}
#endif
#if 0
#include <unistd.h>  
#include <sys/types.h>  
#include <stdio.h>
#include <string.h> 
#include <netdb.h>
#include <sys/wait.h> 
#include <ifaddrs.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <unistd.h>
#include <errno.h>           
#include <sys/shm.h>

#include "test_fork.h"

#pragma pack (4)
typedef struct test_pid{
    unsigned int phy_addr;
    short  process_id;
    char  focus;
}test_pid_t;

typedef struct call_id{
    test_pid_t call_pid;
    char state;
}call_id_t;

typedef char mac_address_t[6];
#pragma pack ()

typedef struct _share_mem{
    int     ref_cnt;
    int*    p_sh_mm;
} share_mem_t;

typedef int* int_ptr_array[10];

int test_fork(void);


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
    if (getifaddrs(&ifaddr) == -1)
    {
        ec = -2;

        goto out;
    }


    for (ifa = ifaddr; ifa != NULL; ifa = ifa->ifa_next)
    {
        if (ifa->ifa_addr == NULL)
            continue;
        addr_family = ifa->ifa_addr->sa_family;

            printf("get_local_ipv4_addr__r strcmp before addr_family=%d, ifa->ifa_name=%s, if_name=%s.\n", addr_family, ifa->ifa_name, if_name);
        cmp_str = strcmp(ifa->ifa_name, if_name);

        char * tmpAddrPtr=&((struct sockaddr_in *)ifa->ifa_addr)->sin_addr;
             char addressBuffer[INET_ADDRSTRLEN];
             inet_ntop(AF_INET, tmpAddrPtr, addressBuffer, INET_ADDRSTRLEN);
            printf("\n\n get_local_ipv4_addr__r ipv4_addr is %s\n\n\n", addressBuffer);
        {
            s = getnameinfo(ifa->ifa_addr, sizeof(struct sockaddr_in),
                            ipv4_addr, NI_MAXHOST, NULL, 0, NI_NUMERICHOST);

            printf("get_local_ipv4_addr__r memcpy before  ip_addr=%s,0x%x.\n", ip_addr,ip_addr);
        }

    }
freeout:
    freeifaddrs(ifaddr);
out:
    return ec;
}


int get_lic_vmac_addr_in_cloud_r(const char* rgname, char* mac, 
                                         int* amount, char** error)
{
#define  BGNIMP_RG_NAME_BASE "/MGW_BGNIURG-"
#define  BGNIMP_RG_NAME      BGNIMP_RG_NAME_BASE "%d"
#define  BGNIMP_VMAC_BASE    "2:3:1:1:5:" 
#define  BGNIMP_VMAC         BGNIMP_VMAC_BASE "%x"
  
     int  mac_len;
     char rg_index = 0;

     printf("get_lic_vmac_addr_in_cloud_r rgname=%s, BGNIMP_RG_NAME_BASE=%s, len=%d . \n\n", rgname, BGNIMP_RG_NAME_BASE, strlen(BGNIMP_RG_NAME_BASE));
     if (0 == memcmp(rgname, BGNIMP_RG_NAME_BASE, strlen(BGNIMP_RG_NAME_BASE)))
     {
         if(0 < sscanf(rgname, BGNIMP_RG_NAME, &rg_index))
         {
             if(0 < sprintf(mac, BGNIMP_VMAC, rg_index))
             {
               *amount = 1;
               printf("get_lic_vmac_addr_in_cloud_r ------------- mac=%s.\n", mac); 
               printf("get_lic_vmac_addr_in_cloud_r ------------- return 0 , %x.\n", mac); 
               return LIBGIA_SUCCESS__C;
             }
             else
                printf("get_lic_vmac_addr_in_cloud_r sprintf return < 0.\n\n");
         }
         else
             printf("get_lic_vmac_addr_in_cloud_r sscanf return < 0.\n\n");
      }
      else
      {
          printf("get_lic_vmac_addr_in_cloud_r memcpy is not equal of 0.\n\n");
      }

    return LIBGIA_FAILURE__C;
}

int get_lic_vmac_addr_r(const char* rgname, char** mac, 
                                         int* amount, char** error)
{
#define  BGNIMP_RG_NAME_BASE "/MGW_IPNIURG-"
#define  BGNIMP_RG_NAME      BGNIMP_RG_NAME_BASE "%d"
#define  BGNIMP_VMAC_BASE    "12:13:11:11:15:" 
#define  BGNIMP_VMAC         BGNIMP_VMAC_BASE "%x"
  
     int  mac_len;
     char rg_index = 0;

     printf("-------------get_lic_vmac_addr_r rgname=%s, BGNIMP_RG_NAME_BASE=%s, len=%d . \n\n", rgname, BGNIMP_RG_NAME_BASE, strlen(BGNIMP_RG_NAME_BASE));
     if (0 == memcmp(rgname, BGNIMP_RG_NAME_BASE, strlen(BGNIMP_RG_NAME_BASE)))
     {
         if(0 < sscanf(rgname, BGNIMP_RG_NAME, &rg_index))
         {
		     *mac = malloc(128);
             if(0 < sprintf(*mac, BGNIMP_VMAC, rg_index))
             {
               *amount = 1;
               printf("-------------get_lic_vmac_addr_r ------------- mac=%s.\n", *mac); 
               printf("-------------get_lic_vmac_addr_r ------------- return 0 , %x.\n", *mac); 
               return LIBGIA_SUCCESS__C;
             }
             else
                printf("-------------get_lic_vmac_addr_r sprintf return < 0.\n\n");
         }
         else
             printf("-------------get_lic_vmac_addr_r sscanf return < 0.\n\n");
      }
      else
      {
          printf("-------------get_lic_vmac_addr_r memcpy is not equal of 0.\n\n");
      }
    
	if(*mac != NULL)
	{
	    free(*mac);
	}
    return LIBGIA_FAILURE__C;
}


void string_mac_to_dec_mac (char* src_addr, mac_address_t* dst_mac)
{
/*    unsigned int ch_addr[6] = {0};
    printf("string_mac_to_dec_mac src_addr: %s .\n", src_addr);
    int ret_val = sscanf(src_addr, "%02x:%02x:%02x:%02x:%02x:%02x",&ch_addr[0],&ch_addr[1],&ch_addr[2],&ch_addr[3],&ch_addr[4],&ch_addr[5]);
    printf("string_mac_to_dec_mac  ret_val=%d .\n", ret_val);
    if(ret_val != 6)
    {
        return;
    }
    printf("string_mac_to_dec_mac  after if .\n");
    

    int i=0;
    for(i=0;i<6;i++)
    {
        printf("mac:%d \n",ch_addr[i]);
        *(dst_mac+i) = ch_addr[i];
    }

    return;
*/
    printf("\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^string_mac_to_dec_mac src_addr: %s .\n", src_addr);
    printf("\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^string_mac_to_dec_mac dst_mac=%x .\n", *dst_mac);
    if (6 != sscanf(src_addr, "%x:%x:%x:%x:%x:%x",
                    &(*dst_mac)[0], &(*dst_mac)[1],
                    &(*dst_mac)[2], &(*dst_mac)[3],
                    &(*dst_mac)[4], &(*dst_mac)[5]))
    {
        printf("string_mac_to_dec_mac src_mac: %s .\n", *src_addr);
    }
}

void test_mac_str_2_dec()
{
    char data[] = "00:D0:F8:22:33:BC";
    unsigned int tmp[6];
    unsigned char mac[6];
    int i;
    int rv;

    memset(mac, 0, sizeof(mac));
    rv = sscanf(data, "%2x:%2x:%2x:%2x:%2x:%2x", &tmp[0], &tmp[1], &tmp[2], &tmp[3], &tmp[4], &tmp[5]);
    printf("test_mac_str_2_dec rv = %d\r\n", rv);
    for (i = 0; i < 6; i++)
    {
        printf("tmp%d=%d\n", i, tmp[i]);
        mac[i] = (unsigned char)tmp[i];
    }	
    printf("test_mac_str_2_dec mac[0] = 0x%02x\r\n", mac[0]);
    printf("test_mac_str_2_dec mac[1] = 0x%02x\r\n", mac[1]);
    printf("test_mac_str_2_dec mac[2] = 0x%02x\r\n", mac[2]);
    printf("test_mac_str_2_dec mac[3] = 0x%02x\r\n", mac[3]);
    printf("test_mac_str_2_dec mac[4] = 0x%02x\r\n", mac[4]);
    printf("test_mac_str_2_dec mac[5] = 0x%02x\r\n", mac[5]);
}



share_mem_t g_share_mem;
int  g_sh_mm[10];

void producer()
{
    int i=0;
    memset(&g_share_mem, 0, sizeof(share_mem_t));
    memset(g_sh_mm, 0, 10);
    for(; i<10; i++)
    {
        g_sh_mm[i] = i; 
    }
    g_share_mem.ref_cnt = 1;
    g_share_mem.p_sh_mm = g_sh_mm;
    
    return;
}

void consumer()
{
    int i=0;
    printf("\n consumer ref_cnt=%d .\n", g_share_mem.ref_cnt);
    for(; i<10; i++)
    { 
        printf("consumer g_sh_mm[%d]=%d.\n", i, g_sh_mm[i]);
    }
    return;
}

void test_goto_statement()
{
    int index = 1;
    index ++;
    if (index = 2)
      goto label_goto;

label_goto:
   printf("test_goto_statement 1\n");
label_goto2:
   printf("test_goto_statement 2\n");
label_goto3:
   printf("test_goto_statement 3\n");
   return;
}


#if 0
int main(int argc, char *argv[], char *envp[])  
{

    char*               rg_name      = "/MGW_BGNIURG-0";
    char*               rg_name_1      = "/MGW_IPNIURG-0";
    char*               errString       = NULL;
    char                mac[128] = {0};
	char*               pmac = NULL;
    char                src_mac[128] = {0};
    mac_address_t        mac_dst;
	mac_address_t        mac_dst_1;
    int amount = 0;

    int iij=0;
    for(iij=0; iij<argc;iij++)
    {
        printf("argv[%d]=%s.\n", iij, argv[iij]);
    }
    

#define VUS_FIELD(a,b,c)                (((a) & ((0xffff >> (16 - (c))) << (b))) >> b)
#define STSI_DINSEL(x)			VUS_FIELD(x, 0, 2)
#define STSI_TSIN(x)			VUS_FIELD(x, 4, 4)

    printf("\n--------------------------------------\n");
    printf("STSI_DINSEL(12)=%d, STSI_TSIN(12)=%d.\n", STSI_DINSEL(12), STSI_TSIN(12));
    printf("\n--------------------------------------\n");
    int a=5,b=10;
    a+=++b;
    int yy=2;
    int zz=yy+(yy=10);
    printf("yy=%d, zz=%d",yy, zz);
    enum{x=5,y,z=4,w};printf("w=%d\n",w);
    printf("\n-------------------------------------- %d\n", a+b);

int i=1;
for(i=0;i=-1;i=1){
printf("test:%d",i);
if(i!=1)break;
}

int *pp=NULL;
printf("\n null=%d.\n\n",sizeof(pp));

{
int i=0;
int j=i++ +i;
int k=i--;
int l=k- --i;
printf("\n\nj=%d, l=%d.\n\n", j, l); 

static char *arr[]={"abcde","abcde","abcd","abcdef"};
char **ptr[]={arr+3,arr+2,arr+1,arr}, ***p;
p=ptr;
++p;
printf("static:%s\n",**p+1);

int nn;
scanf("%d",nn);
printf("%d",nn);




}


#define INTSRC2_TVTPA_I			(1 << 12)
#define INTSRC2_LOPP_I			(1 << 11)
#define INTSRC2_HOPP_I			(1 << 10)
#define INTSRC2_APS_I			(1 << 9)
#define INTSRC2_PG64_I			(1 << 8)
#define INTSRC2_RMSU_I			(1 << 7)
#define INTSRC2_TMSU_I			(1 << 6)

    int_ptr_array test_int_ptr;
    int int_a = 10;
    int int_b = 11;
    int int_c = 12;
    test_int_ptr[0] = &int_a;
    test_int_ptr[1] = &int_b;
    test_int_ptr[2] = &int_c;
    printf("---- test_int_ptr 0=%d, 1=%d, 2=%d ----\n",*test_int_ptr[0], *test_int_ptr[1], *test_int_ptr[2]);
    int * ptr_int = test_int_ptr[2];
    test_int_ptr[2] = test_int_ptr[1];
    test_int_ptr[1] = ptr_int;
    printf("----after test_int_ptr 0=%d, 1=%d, 2=%d ----\n", *test_int_ptr[0], *test_int_ptr[1], *test_int_ptr[2]);
    test_goto_statement();

    int intsrc2 = 0x800;
    int int22 = INTSRC2_TVTPA_I |
				INTSRC2_LOPP_I |
				INTSRC2_HOPP_I |
				INTSRC2_APS_I |
				INTSRC2_PG64_I |
				INTSRC2_RMSU_I |
				INTSRC2_TMSU_I;
   
    printf("---------------INTSRC2_TVTPA_I=0x%x, INTSRC2_LOPP_I=0x%x.---------\n", INTSRC2_TVTPA_I, INTSRC2_LOPP_I);
    printf("---------------INTSRC2_HOPP_I=0x%x, INTSRC2_APS_I=0x%x.---------\n", INTSRC2_HOPP_I, INTSRC2_APS_I);
    printf("---------------INTSRC2_PG64_I=0x%x, INTSRC2_RMSU_I=0x%x.---------\n", INTSRC2_PG64_I, INTSRC2_RMSU_I);
    printf("---------------INTSRC2_TMSU_I=0x%x.---------\n", INTSRC2_TMSU_I);
    printf("---------------intsrc2=0x%x, int22=0x%x, intsrc2&int22=%d.---------\n", intsrc2, int22, (intsrc2 & int22));

  
#define VUS_FIELD(a,b,c)                (((a) & (0xffff >> (16 - (c)))) << (b))

#define INTSRC1_SONET_LINE_I		(1 << 10)
#define INTSRC1_TOP_I			(1 << 9)
#define INTSRC1_ESSI_I			(1 << 8)
#define INTSRC1_SLP_PROT_I(x)		VUS_FIELD(x, 4, 4)
#define INTSRC1_SLP_WORK_I(x)		VUS_FIELD(x, 0, 4)

    int intsrc1 = 0x4000;
    int int11 = intsrc1 & (
				INTSRC1_SONET_LINE_I |
				INTSRC1_TOP_I |
				INTSRC1_ESSI_I |
				INTSRC1_ESSI_I |
				INTSRC1_SLP_PROT_I(0xf) |
				INTSRC1_SLP_WORK_I(0xf));

    printf("---------------  int11=%d. ---------\n", int11);

  char str[] ="fsipHostName=TDMNIP-12";
  char * pch, *pch_ind;
  pch = strstr (str,"fsipHostName=");
  pch_ind = strrchr (str,'-');
  int node_index = atoi(pch_ind+1);
  printf("\n\n\n*************************************  pch=%s. pch_ind=%s, index=%d ---------\n\n\n", pch, pch_ind, node_index);
 
    producer();
    consumer();
    printf("---------------------------------------------\n\n");
    test_mac_str_2_dec();

    memset(mac, 0, sizeof(mac));
    memset(mac_dst, 0, sizeof(mac_dst));
    memset(mac_dst_1, 0, sizeof(mac_dst_1));
    int ret_v = get_lic_vmac_addr_in_cloud_r(rg_name, mac, &amount, &errString);
    printf("get_lic_vmac_addr_in_cloud_r after return %d ===================.\n\n", ret_v);

    int ii=0;
    for(ii=0;ii<128;ii++)
    {
             printf("%c",mac[ii]);
    }
    printf("\n\nget_lic_vmac_addr_in_cloud_r after for loop, ii=%d.\n\n", ii);
    printf("\n++++++++++++++++++++++++++++++++++++\n");
/*
    sscanf(mac, "%02x:%02x:%02x:%02x:%02x:%02x", &mac_dst[0],&mac_dst[1],&mac_dst[2],&mac_dst[3],&mac_dst[4],&mac_dst[5]);
*/
    for (ii=0; ii<6; ii++)
    {
       printf("%d", mac_dst[ii]);
    }
    printf("\n===================================\n\n");

    string_mac_to_dec_mac(mac, &mac_dst);
    printf("\n******************************************\n");
    for (ii=0; ii<6; ii++)
    {
       printf("%x:", mac_dst[ii]);
    }
    printf("\n******************************************\n");
    int ret_v_1 = get_lic_vmac_addr_r(rg_name_1, &pmac, &amount, &errString);
    printf("\n----------------------get_lic_vmac_addr_r after return %d pmac=%x . ===================.\n\n", ret_v, pmac);
    printf("\n----------------------get_lic_vmac_addr_r after pmac=%s . ===================.\n\n", pmac);
    string_mac_to_dec_mac(pmac, &mac_dst_1);
    printf("\n----------------------******************************************\n");
    for (ii=0; ii<6; ii++)
    {
       printf("%x:", mac_dst_1[ii]);
    }
    printf("\n------------------------------------------------------------\n\n");

    return 1;
}
#endif

char f1apLockFile[] =  "./f1apLockFile.pid";
char x2apLockFile[] =  "./x2apLockFile.pid"; 
char otherLockFile[] =  "./otherLockFile.pid"; 
int lockMode =  ( S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH );

int isAlreadyRunning(const char* fileName)
{
    int fd;
    struct flock fl;
    char buf[16];
    fd = open(fileName,O_RDWR|O_CREAT, lockMode);
    if(fd < 0)
    {
        return 1;
    }

    fl.l_type = F_WRLCK;
    fl.l_start = 0;
    fl.l_whence = SEEK_SET;
    fl.l_len = 0;
    if(fcntl(fd, F_SETLK, &fl) < 0)
    {
        if (errno == EACCES || errno == EAGAIN)
        {
            close(fd);
        }
        return 1;
    }
    ftruncate(fd,0);
    sprintf(buf,"%ld", (int)(getpid()));
    write(fd,buf,strlen(buf) + 1);
    return 0;
}
int globalServiceID = 0;
int runMainLoop()
{
    if(globalServiceID == 1)
	{
		sleep(100);
		printf("[Child]: F1AP Service exit, globalServiceID = %d, pid=%d.\n", globalServiceID, (int)getpid());
		/*if(isAlreadyRunning(f1apLockFile))
		{
			sleep(10);
			printf("F1AP Service exit, globalServiceID = %d, pid=%d.\n", globalServiceID, (int)getpid());
		}
		else
		{
			printf("F1AP Service is already running, globalServiceID = %d.\n", globalServiceID);
		}*/
	}
	
	if(globalServiceID == 2)
	{
		sleep(100);
		printf("[Child]: X2AP Service exit, globalServiceID = %d, pid=%d.\n", globalServiceID, (int)getpid());
		/*if(isAlreadyRunning(x2apLockFile))
		{
			sleep(10);
			printf("X2AP Service exit, globalServiceID = %d, pid=%d.\n", globalServiceID, (int)getpid());
		}
		else
		{
			printf("X2AP Service is already running, globalServiceID = %d.\n", globalServiceID);
		}*/
	}
	
	if(globalServiceID == 3)
	{
		sleep(100);
		printf("[Child]: Other Service exit, globalServiceID = %d, pid=%d.\n", globalServiceID, (int)getpid());
		/*if(isAlreadyRunning(otherLockFile))
		{
			sleep(10);
			printf("Other Service exit, globalServiceID = %d, pid=%d.\n", globalServiceID, (int)getpid());
		}
		else
		{
			printf("Other Service is already running, globalServiceID = %d.\n", globalServiceID);
		}*/
	}
	
	return 1;
}

int main(int argc, char *argv[], char *envp[])  
{
    char*               rg_name      = "/MGW_BGNIURG-0";
    char*               rg_name_1      = "/MGW_IPNIURG-0";
    char*               errString       = NULL;
    char                mac[128] = {0};
    char                src_mac[128] = {0};
    unsigned int        mac_dst[6];
    int amount = 0;

/*
    test_mac_str_2_dec();
*/

/*
    memset(mac, 0, sizeof(mac));
    memset(mac_dst, 0, sizeof(mac_dst));
    int ret_v = get_lic_vmac_addr_in_cloud_r(rg_name, mac, &amount, &errString);
    printf("get_lic_vmac_addr_in_cloud_r after return %d ===================.\n\n", ret_v);
    strcpy(src_mac, mac);
    printf("get_lic_vmac_addr_in_cloud_r after src_mac %s ======================.\n\n",src_mac);
*/

/*    string_mac_to_dec_mac(mac, mac_dst);


    printf("get_lic_vmac_addr_in_cloud_r ++++++++++++++++++++++++++++++++ .\n\n");
    printf("get_lic_vmac_addr_in_cloud_r before string_mac_to_dec_mac mac_dst: %d:%d:%d:%d:%d:%d .\n", mac_dst[0],mac_dst[1],mac_dst[2],mac_dst[3],mac_dst[4],mac_dst[5]);
*/

/*    sscanf("2:3:0:0:0:0", "%02x:%02x:%02x:%02x:%02x:%02x", &mac_dst[0],&mac_dst[1],&mac_dst[2],&mac_dst[3],&mac_dst[4],&mac_dst[5]);
*/

/*    printf("get_lic_vmac_addr_in_cloud_r string_mac_to_dec_mac mac_dst: %d:%d:%d:%d:%d:%d .\n", mac_dst[0],mac_dst[1],mac_dst[2],mac_dst[3],mac_dst[4],mac_dst[5]);
*/



//    return 1;



    printf("[Parent]: Main starting to running =========================== .\n");
    printf("\n[Parent]:  Main starting to running , pid is %d .\n", getpid());  
    pid_t pid;
#define MAX_CHILD_NUMBER 4
    pid_t allChildPid[MAX_CHILD_NUMBER] = {0};
    int i = 0;
    char cmd[32] = "";
	int count = 0;
	

	for( i=1; i< MAX_CHILD_NUMBER; i++ )
    {
		globalServiceID = i;
		pid = fork();  
		switch (pid)  
		{  
		case -1:  
			perror("fork error");  
			return 1;// exit(1);  
		case 0:  
			printf("\n\n");
			printf("[Child]: globalServiceID=%d.\n", globalServiceID);
			printf("[Child]: my process id is %d , my parent id is %d .\n .", getpid(), getppid());  
			//sleep(10);
			//printf("I am the child process, I am sleep for 10 seconds .\n");
			runMainLoop();
			printf("[Child]: my process id is %d exit .\n .", getpid());
			exit(0);  
		default:
			printf("\n\n");
			printf("[Parent]: globalServiceID=%d.\n",globalServiceID);
			printf("[Parent]: my process id is %d , my parent id is %d .\n", getpid(), getppid());  
			printf("[Parent]: fork return value is %d .\n", pid);
			allChildPid[i] = pid;
			//sleep(15);
			//printf("I am the parent process, I am sleep for 15 seconds .\n");  
			break;  
		}
    }

	sleep(15);
	for(i=1; i<MAX_CHILD_NUMBER; i++)
	{
		printf("[Parent]: Kill Child[%d].\n", allChildPid[i]);
		sprintf(cmd, "nohup kill %d >/dev/null 2>&1 &", allChildPid[i]);
		system(cmd);
	}


    return 0;
    printf("\n\n\n");  
    sleep(10);
    /*test_fork();*/
    char ch[4]={0};
    char sub1[4]={0};
    char sub2[4]={0};
    for(i=0;i<0;i++)
    {
        sprintf(ch, "%04x", i);
        memcpy(sub1,ch,2);
        memcpy(sub2,ch+2,2);
        printf("%s,%s,00,00,", sub2, sub1);
        printf("%s,%s,00,00,", sub2, sub1);

    }
    printf("\n");
    return 0;  
}

int test_fork(void)  
{  
   int i=0;  
   for(i=0;i<2;i++){  
       pid_t fpid=fork();  
       if(fpid==0)  
           printf("***son pid = %d, ppid = %d \n", getpid(), getppid());  
       else  
           printf("----------father  pid = %d, ppid = %d \n", getpid(), getppid());
   }  
   return 0;  
}
#endif

//#if 0
#include <thread>
#include <mutex>
#include <iostream>
#include <chrono>
#include <cstring>
#include <pthread.h>
 
std::mutex iomutex;
void f(int num)
{
    std::this_thread::sleep_for(std::chrono::seconds(1));
 
    sched_param sch;
    int policy; 
    pthread_getschedparam(pthread_self(), &policy, &sch);
    std::lock_guard<std::mutex> lk(iomutex);
    std::cout << "Thread " << num << " is executing at priority "
              << sch.sched_priority << '\n';
}
 
int main()
{
    std::thread t1(f, 1), t2(f, 2);
 
    sched_param sch;
    int policy; 
    pthread_getschedparam(t1.native_handle(), &policy, &sch);
    std::cout << "t1 sched_priority: " << sch.sched_priority << '\n';
    sch.sched_priority = 20;
    if (pthread_setschedparam(t1.native_handle(), SCHED_FIFO, &sch)) {
        std::cout << "Failed to setschedparam: " << std::strerror(errno) << '\n';
    }
 
    t1.join(); t2.join();
}
//#endif

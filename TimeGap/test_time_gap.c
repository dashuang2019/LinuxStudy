#include <unistd.h>  
#include <sys/types.h>  
#include <stdio.h>
#include <string.h> 
#include <time.h>
#include <sys/times.h> //??sys??
#include <stdlib.h>
#include <fcntl.h>





int print_every_time()
{
  
  long    i = 1000000000L;
  clock_t start_c, finish_c;
  time_t start_t,finish_t;
  struct timeval start_stv,finish_stv; //?time_t?????
  struct tms start_stms,finish_stms;//?clock_t?????
  struct tm *start_stm,*finish_stm; //?time_t????,???int
  double  duration;
  long luration;
  

   /* ???????????*/
  printf( "Time to do %ld empty loops is \n", i );

  start_c = times(&start_stms); //???????times?clock???clock_t???????,?????*10,?????
  printf("start time: times start_c=%u.\n", start_c);
  start_c = clock();//??????,???????????0
  printf("start time: clock start_c=%u.\n", start_c);
  start_t = time(NULL); //??????
  printf("start time: time start_t=%u.\n", start_t);
  gettimeofday(&start_stv,NULL);

  start_stm = localtime(&start_t); //??????????,mktime????????,????????,??????????????,?????man

  printf("*********** 1 ********************\n");
  //?????ctime?????????
  printf("====\nstart time:%04d-%02d-%02d %02d:%02d:%02d\n",
         start_stm->tm_year+1900,
         start_stm->tm_mon+1,
         start_stm->tm_mday,
         start_stm->tm_hour,
         start_stm->tm_min,
         start_stm->tm_sec);
  printf("********** 2 *********************\n");
  printf("start time:%s",ctime(&start_t));
    
  //while( i-- )      ;

  sleep(10);

  finish_c = times(&finish_stms);
  printf("start time: times finish_c=%u.\n", finish_c);
  finish_c = clock();
  printf("start time: clock finish_c=%u.\n", finish_c);
  finish_t = time(NULL);
  printf("start time: time finish_t=%u.\n", finish_t);
  gettimeofday(&finish_stv,NULL);
  
  duration = (double)(finish_c - start_c)/CLOCKS_PER_SEC; ;
  printf( "1. [clock_t] get  %f secondes,start = %u,finish =%u\n",duration,start_c,finish_c );

  luration = (finish_t - start_t);
  printf("2. [time_t] get %u seconds,start = %u, finish = %u\n",luration,start_t,finish_t);

  luration = (finish_stv.tv_sec - start_stv.tv_sec)*1000 + ( finish_stv.tv_usec - start_stv.tv_usec)/1000;
  printf("3. [struct timeval] get %u ms,start=%u,finish=%u\n",luration,start_stv.tv_sec,finish_stv.tv_sec);

  long clktck=sysconf(_SC_CLK_TCK);
  
  printf("================_SC_CLK_TCK=%d,CLOCKS_PER_SEC=%d\n",clktck,CLOCKS_PER_SEC);

  
  printf("4. [struct tms] get user= %7.2f,sys=%7.2f,child_user=%7.2f,child_sys=%7.2f\n",
         (finish_stms.tms_utime - start_stms.tms_utime)/(double)clktck,
         (finish_stms.tms_stime - start_stms.tms_stime)/(double)clktck,
         (finish_stms.tms_cutime - start_stms.tms_cutime)/(double)clktck,
         (finish_stms.tms_cstime - start_stms.tms_cstime)/(double)clktck ); 

  return 1; 
}

   



int test_fork(void);

unsigned int  time_gap(
  unsigned int   first_time ,
  unsigned int   first_date ,
  unsigned int   second_time ,
  unsigned int   second_date );


unsigned int REVERSE_32(
        unsigned int reverse
);

int calc_cpu_load(void)
{
  long double a[7],b[7];
  char chTest[256] = {0};
  double loadavg;
  long long int ai[7], bi[7];
  long long int before, after;
  FILE *fp;
  int i = 0;
  for(; i<1; i++)
  {
    fp = fopen("/proc/stat","r");
    fscanf(fp,"%s %Lf %Lf %Lf %Lf %Lf %Lf %Lf",chTest,&a[0],&a[1],&a[2],&a[3],&a[4],&a[5],&a[6]);
    fclose(fp);
    printf("First : %s %Lf - %Lf - %Lf - %Lf - %Lf - %Lf - %Lf .\n",chTest,a[0],a[1],a[2],a[3],a[4],a[5],a[6]);
    printf("\n=================================================\n");
    int ii=0;
    before =0;
    for (;ii<7;ii++)
    {
        ai[ii] = (long long int)a[ii];
        before += ai[ii];
    }
    printf("First : %llu - %llu - %llu - %llu - %llu - %llu - %llu \n",ai[0],ai[1],ai[2],ai[3],ai[4],ai[5],ai[6]);
    printf("before = %llu.\n", before);
    sleep(1);
    fp = fopen("/proc/stat","r");
    fscanf(fp,"%*s %Lf %Lf %Lf %Lf %Lf %Lf %Lf",&b[0],&b[1],&b[2],&b[3],&b[4],&b[5],&b[6]);
    fclose(fp);
    printf("Second : %Lf - %Lf - %Lf - %Lf - %Lf - %Lf - %Lf .\n",b[0],b[1],b[2],b[3],b[4],b[5],b[6]);
    printf("\n=================================================\n");
    after = 0;
    for (ii=0;ii<7;ii++)
    {
        bi[ii] = (long long int)b[ii];
        after += bi[ii];
    }
    printf("after = %llu.\n", after);
    
    printf("******************************************\n");
    long double l_a = (a[0]+a[1]+a[2]+a[4]+a[5]+a[6]);
    long double l_b = (b[0]+b[1]+b[2]+b[4]+b[5]+b[6]);
    long double l_u = l_b - l_a;
    printf("Long double before=%Lf, after=%Lf, usage=%Lf .\n", l_a, l_b, l_u);
    
    long double l_at = (a[0]+a[1]+a[2]+a[3]+a[4]+a[5]+a[6]);
    long double l_bt = (b[0]+b[1]+b[2]+b[3]+b[4]+b[5]+b[6]);
    long double l_ut = l_bt - l_at;
    printf("Long double before_total=%Lf, after_total=%Lf, total=%Lf .\n", l_at, l_bt, l_ut);
    loadavg = l_u * 100 / l_ut;
    printf("The current CPU utilization is : %Lf * 100 / %Lf = %f\%\n", l_u, l_ut, loadavg);

    long long int before_u = before - ai[3];
    long long int after_u = after - bi[3];
    printf("before_u=%llu, after_u=%llu .\n", before_u, after_u);
    long long int usage = after_u - before_u;
    long long int total = after - before;
    printf("Uasge = %llu , Total = %llu .\n", usage, total);
    printf("CPU Load = %llu * 100 / %llu = %f\% .\n", usage, total,  usage * 100 / total);
  }

  return(0);
}

int main(void)  
{ 
   return calc_cpu_load();
   time_t start_t,finish_t;
   struct tm *start_stm,*finish_stm;
   unsigned int diff_time=0;
   
   char file_name[32]={};
        char cmd_string[256] = {0};  
   int port_id = 1;
   printf("Shift 1: %d  .\n\n", port_id|port_id<<4);
   port_id = 2;
   printf("Shift 2: %d  .\n\n", port_id|port_id<<4);

   printf("**********%d,%d,%d,%d ***********\n",file_name[0],file_name[1],file_name[2],file_name[3]);   
 
   unsigned int before = 0x12345678;
   unsigned int after = REVERSE_32(before);
   printf( "\n\n\n REVERSE_32 before=0x%x, after=0x%x \n\n\n\n", before, after);
  
   start_t = time(NULL);
   start_stm = localtime(&start_t);
   printf("====\n start time:%04d-%02d-%02d %02d:%02d:%02d\n",  
         start_stm->tm_year+1900,  
         start_stm->tm_mon+1,  
         start_stm->tm_mday,  
         start_stm->tm_hour,  
         start_stm->tm_min,  
         start_stm->tm_sec);  

   
        sprintf(file_name, "flip_info_%04d-%02d-%02d.txt", start_stm->tm_year+1900, start_stm->tm_mon+1, start_stm->tm_mday);
        sprintf(cmd_string, "date >> %s; iphFlipIt display all >> %s;", file_name, file_name);
printf("====\n file name : %s cmd string: %s .\n", file_name, cmd_string);
   system(cmd_string);

   //sleep(10);
   finish_t = time(NULL); 
   finish_stm = localtime(&finish_t);
   printf("====\n finish time:%04d-%02d-%02d %02d:%02d:%02d\n",  
         finish_stm->tm_year+1900,  
         finish_stm->tm_mon+1,  
         finish_stm->tm_mday,  
         finish_stm->tm_hour,  
         finish_stm->tm_min,  
         finish_stm->tm_sec); 
      
   unsigned int  first_time  = 0x11111111;
   unsigned int  first_date  = 0x20081102;
   unsigned int  second_time = 0x11111111;
   unsigned int  second_date = 0x20100315;

   diff_time = time_gap(first_time, first_date, second_time, second_date);
   printf("time_gap diff_time=%u.\n", diff_time);
   return 1;
    
   /* printf("Main starting to running , pid is %d .\n", getpid());  
    pid_t pid;
    int i = 0;
    for( i=0; i< 3; i++ )
    {  
    pid=fork();  
    switch (pid)  
    {  
    case -1:  
        perror("fork error");  
        return 1;// exit(1);  
    case 0:  
        printf("I am the child process, my process id is %d , my parent id is %d .\n .", getpid(), getppid());  
        //sleep(10);
        //printf("I am the child process, I am sleep for 10 seconds .\n");  
        break;  
    default:  
        printf("I am the parent process, my process id is %d , my parent id is %d .\n", getpid(), getppid());  
        //sleep(15);
        //printf("I am the parent process, I am sleep for 15 seconds .\n");  
        break;  
    }
    }
    printf("\n\n\n");  
    sleep(10);*/
    /*test_fork();*/
    int i=0;
    char ch[4]={0};
    char sub1[4]={0};
    char sub2[4]={0};
    for(i=0;i<1001;i++)
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


unsigned int REVERSE_32(
        unsigned int reverse
)
{
    unsigned int after = 0;
    after = (reverse & 0xff000000) >> 24;
    printf("\n REVERSE_32 0x%x \n", after);
    after += (reverse & 0x00ff0000) >> 8;
    printf("\n REVERSE_32 0x%x \n", after);
    after += (reverse & 0x0000ff00) << 8;
    printf("\n REVERSE_32 0x%x \n", after);
    after += (reverse & 0x000000ff) << 24;
    printf("\n REVERSE_32 0x%x \n", after);
    return after;
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

static inline char to_bcd(unsigned int val)
{
   return ((val / 10) << 4) | (val % 10);
}

static inline char from_bcd(unsigned int  val)
{
   return ((val >> 4) * 10) + (val & 0xf);
}

static inline short to_long_bcd(unsigned int  val)
{
   return ((val / 1000) << 12) | (((val % 1000) / 100) << 8) |
        (((val %100) / 10) << 4) |  (val % 10);
}

static inline short from_long_bcd(unsigned int  val)
{
   return (((val & 0xf000) >> 12 ) * 1000) + (((val & 0xf00) >> 8) * 100) +
        (((val & 0xf0) >> 4) * 10) + (val & 0xf);
}

static inline char bcd_hours(unsigned int  v)
{
   return from_bcd((v & 0xff000000) >> 24);
}

static inline char bcd_minutes(unsigned int  v)
{
   return from_bcd((v & 0xff0000) >> 16);
}

static inline char bcd_seconds(unsigned int  v)
{
   return from_bcd((v & 0xff00) >> 8);
}

static inline char bcd_csecs(unsigned int  v)
{
   return from_bcd(v & 0xff);
}

static inline char bcd_day(unsigned int  v)
{
   return from_bcd(v & 0xff);
}

static inline char bcd_month(unsigned int  v)
{
   return from_bcd((v & 0xff00) >> 8);
}

static inline short bcd_year(unsigned int  v)
{
   return from_long_bcd((v & 0xffff0000) >> 16);
}

#define csecperhour 360000
#define csecperminu 6000
#define csecpersec 100

unsigned int  time_gap(
  unsigned int   first_time ,
  unsigned int   first_date ,
  unsigned int   second_time ,
  unsigned int   second_date )
{
  int time;
        struct tm tm_first,tm_second;
    time_t t_first,t_second;
 

  if ((bcd_year(first_date) < 1900)||
        (bcd_month(first_date) < 1)||(bcd_month(first_date) > 12)||
         (bcd_day(first_date)<1 )|| (bcd_day(first_date)>31) ||
         (bcd_year(second_date) < 1900)||
        (bcd_month(second_date) < 1)||(bcd_month(second_date) > 12)||
         (bcd_day(second_date)<1) || (bcd_day(second_date)>31))
        return 0;

    memset(&tm_first, 0, sizeof(tm_first));
        memset(&tm_second, 0, sizeof(tm_second));

    tm_first.tm_year = bcd_year(first_date) - 1900;
    tm_first.tm_mon = bcd_month(first_date) - 1;
    tm_first.tm_mday = bcd_day(first_date);
    printf("time_gap first=%u-%u-%u.\n", tm_first.tm_year, tm_first.tm_mon, tm_first.tm_mday);

    tm_second.tm_year = bcd_year(second_date) - 1900;
    tm_second.tm_mon = bcd_month(second_date) - 1;
    tm_second.tm_mday = bcd_day(second_date);
    printf("time_gap second=%u-%u-%u.\n", tm_second.tm_year, tm_second.tm_mon, tm_second.tm_mday);

    t_first = mktime(&tm_first);
    t_second = mktime(&tm_second);
    printf("time_gap t_first=%u t_second=%u.\n", t_first, t_second);

    if (t_first == (time_t)(-1)||t_second == (time_t)(-1))
        return 0;

     localtime_r(&t_first, &tm_first);
     localtime_r(&t_second, &tm_second);


    if(( tm_first.tm_mday !=  bcd_day(first_date)) || ( tm_second.tm_mday !=  bcd_day(second_date)))
        return 0;

     time = (t_second - t_first)*csecpersec + /* days */
        (bcd_hours(second_time) - bcd_hours(first_time)) *
        csecperhour + /* hours */
        (bcd_minutes(second_time) - bcd_minutes(first_time)) *
        csecperminu + /* minutes */
        (bcd_seconds(second_time) - bcd_seconds(first_time)) *
        csecpersec + /* seconds */
        bcd_csecs(second_time) - bcd_csecs(first_time);

      if (time<0)
        time = 0;
      return (unsigned int)time;

}

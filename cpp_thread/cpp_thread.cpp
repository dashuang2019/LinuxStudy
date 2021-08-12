#define _GNU_SOURCE
//#include <stdio.h>  
//#include <stdlib.h>  
//#include <string.h>  
#include <unistd.h>  
//#include <sys/socket.h>  
//#include <sys/types.h>  
//#include <sys/time.h>
//#include <netinet/in.h>  
//#include <netinet/sctp.h>  
//#include <arpa/inet.h>  
//#include <pthread.h>
//#include <sched.h>
#include <errno.h>
#include <iostream>       // std::cout
#include <thread>         // std::thread
#include <boost/program_options.hpp>
#include <boost/program_options/variables_map.hpp>
using namespace boost::program_options;
using namespace std;


#define MAX_THREAD_NUM 1


/*
typedef struct __client_thread
{
	unsigned short cpu_id;
}client_thread_t;

int g_thread_exit_flag[128] = {0};

class CTestCppThread
{
public:
	CTestCppThread(){}
	
public:
	int cpu_id;
};
	
void set_thread_affinity(int cpu_id)
{
	int i, cpus = 0;
	cpu_set_t mask;
	cpu_set_t get;

	cpus = sysconf(_SC_NPROCESSORS_CONF);
	printf("This system has %d processor(s)\n", cpus);
	
	CPU_ZERO(&mask);
	CPU_SET(cpu_id, &mask);  

	if (pthread_setaffinity_np(pthread_self(), sizeof(mask), &mask) < 0) {
		printf("set thread affinity failed\n");
	}   
	
	CPU_ZERO(&get);
	if (pthread_getaffinity_np(pthread_self(), sizeof(get), &get) < 0) {
		printf("get thread affinity failed\n");
	}   

	for (i = 0; i < cpus; i++) {
		if (CPU_ISSET(i, &get)) {
			printf("this thread %d is running in processor %d\n", (int)pthread_self(), i); 
		}   
	}   
}

void cpp_thread(CTestCppThread & cppThread)
{
	int i = 0;
	int loop_cnt = 0;
#define MAX_LOOP_CNT 1000*1000*1000*1000
	printf("******************* client_thread start  %u  *****************************************\n", (unsigned int)pthread_self());
	printf("cpu_id = %d, g_thread_exit_flag =%u.\n", cppThread.cpu_id);
	

	set_thread_affinity(cppThread.cpu_id);
	
	while(1)
	{
		//
	}
	
	printf("******************* client_thread exit  %u  *****************************************\n", (unsigned int)pthread_self());
	return 1;
}
*/
void foo() 
{
  // do stuff...
  sleep(15);
  cout << "foo exit.\n";
}

void bar(int x)
{
  // do stuff...
  sleep(10);
  cout << "bar exit.\n";
}


int main(int argc, char *argv[], char *envp[])
{
  std::thread first (foo);     // spawn new thread that calls foo()
  std::thread second (bar,0);  // spawn new thread that calls bar(0)

  cout << "main, foo and bar now execute concurrently...\n";

  // synchronize threads:
  first.join();                // pauses until first finishes
  cout << "first join completed.\n";
  second.join();               // pauses until second finishes
  cout << "second join competed.\n";

  cout << "foo and bar completed.\n";
  
//	int index = 0;
//	int cpus = 0;
	/*
	options_description opts("demo options");
	
	opts.add_options()
			("Help", "just a help info")
			("F1AP", "F1AP interface service")
			("X2AP", "X2AP interface service")
			("XNAP", "XNAP interface service")
			("E1AP", "E1AP interface service")
			;
	variables_map vm;
	store(parse_command_line(argc, argv, opts), vm);
	
	if (vm.count("help"))
	{
		cout<< opts << endl;
	}
	if (vm.count("F1AP"))
	{
		cout<< opts << endl;
	}
	if (vm.count("X2AP"))
	{
		cout<< opts << endl;
	}
	if (vm.count("XNAP"))
	{
		cout<< opts << endl;
	}
	if (vm.count("E1AP"))
	{
		cout<< opts << endl;
	}
	if (vm.empty())
	{
		cout<< "no options" << endl;
	}
*/
	/*
	memset(g_thread_exit_flag, 0, sizeof(g_thread_exit_flag));
	cpus = sysconf(_SC_NPROCESSORS_CONF);
	
	for(; index<cpus; index++)
	{
		CTestCppThread cppThread;
		cppThread.cpu_id = index;
		std::thread second (cpp_thread, cppThread);  
		sleep(10);
	}*/
    sleep(100000);
	return 1;
}


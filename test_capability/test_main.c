#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
//#include <sys/capability.h>
#include <errno.h>
#include <filesystem>
#include <iostream>
#include <string>

/*
void list_capability()
{
     struct __user_cap_header_struct cap_header_data;
     cap_user_header_t cap_header = &cap_header_data;

     struct __user_cap_data_struct cap_data_data;
     cap_user_data_t cap_data = &cap_data_data;

     cap_header->pid = getpid();
     cap_header->version = _LINUX_CAPABILITY_VERSION_1;

     if (capget(cap_header, cap_data) < 0) {
         perror("Failed capget");
         exit(1);
     }   
     printf("Cap data permitted: 0x%x,  effective: 0x%x,  inheritable:0x%x\n", 
         cap_data->permitted, cap_data->effective,cap_data->inheritable);
}

int main(void)
{
    cap_t caps = cap_init();
    cap_value_t capList[2] = {CAP_DAC_OVERRIDE, CAP_SYS_TIME};
    unsigned num_caps = 2;
    //cap_set_flag(caps, CAP_EFFECTIVE, num_caps, capList, CAP_SET);
    cap_set_flag(caps, CAP_INHERITABLE, num_caps, capList, CAP_SET);
    cap_set_flag(caps, CAP_PERMITTED, num_caps, capList, CAP_SET);

    if(cap_set_proc(caps))
    {   
        perror("cap_set_proc"); 
    }   

    list_capability();

    execl("/home/xlzh/code/capability/child", NULL);

    sleep(1000);
}
*/

namespace fs = std::filesystem;
 
int main(int argc, const char* argv[])
{
    // 打印出目录 'dir' 中的所有常规文件。
    try {
        const auto dir = argc == 2
                             ? fs::path{ argv[1] }
                             : fs::current_path();
 
        std::cout << "Current dir: " << dir << '\n'
                  << std::string(40, '-') << '\n';
 
        for (fs::directory_entry const& entry : fs::directory_iterator(dir)) {
            if (entry.is_regular_file()) {
                std::cout << entry.path().filename() << '\n';
            }
        }
    } catch(fs::filesystem_error const& e) {
        std::cout << e.what() << '\n';
    }
}                                                                                                                                                                        } 

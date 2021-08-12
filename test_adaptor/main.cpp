#include <iostream>
#include <cstdlib>
#include <functional>
#include "./adaptor/IAaConfig.hpp"

int main()
{
    std::cout << "Hello, Wandbox!" << std::endl;
    std::cout << "return : " << aaConfigEarlyStartup() << std::endl;
    std::cout << "Hello, Wandbox!" << std::endl;
    return 1;
}

#include <iostream>
//#include <cstdlib>
//#include <functional>

class testAA
{
public:
    testAA(){ std::cout << "Print in testAA constructor." << std::endl; }
    ~testAA(){ std::cout << "Print in testAA destructor." << std::endl; }
};

testAA gAA{};

int main()
{
    std::cout << "Print in main function!" << std::endl;
    std::cout << "Before create local testAA instance." << std::endl;
    testAA lAA{};
    std::cout << "Main end." << std::endl;
    return 1;
}

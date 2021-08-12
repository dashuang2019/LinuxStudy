#include <algorithm>
#include <string>
#include <iostream>
#include <cctype>
#include <map>
#include <vector>
#include <exception>


struct L2HiPool
{
    int poolId{1};
    int nid{2};
    int poolType{3};
    int version{4};
    std::string ipAddress{"12345"};
};
using L2HiPools = std::map<int, L2HiPool>;

void test_map_throw_exception(L2HiPools& l2HiPools)
{
    std::cout << "value=" << l2HiPools.at(123).ipAddress << std::endl;
}


void deleteContextImpl(L2HiPools& l2HiPools)
{
    std::cout << "erase before" << std::endl;
    l2HiPools.erase(123);
    std::cout << "erase end" << std::endl;
}

void deleteContextImpl1(L2HiPools& l2HiPools)
{
    std::cout << "erase before" << std::endl;
    auto primaryIter = l2HiPools.find(12);
    if (primaryIter == l2HiPools.cend())
    {
        return;
    }
    L2HiPools l2HiPools1{};
    auto& minorKey = primaryIter->second.poolId;
    l2HiPools1.erase(primaryIter);
    std::cout << "erase end" << std::endl;
}

void fun1()
{
    std::cout << "fun1() start" << std::endl;
    L2HiPools l2HiPools{};
    test_map_throw_exception(l2HiPools);
    std::cout << "fun1() end" << std::endl;
}

void fun2()
{
    fun1();
    std::cout << "fun2()" << std::endl;
}

void fun3()
{
    fun2();
    std::cout << "fun3()" << std::endl;
}

int main()
{
    //try {
        fun3();
    /*}
    catch (const std::out_of_range& e)
    {
        std::cout << "PoolDataProvider can't find L2HiPool. " << std::endl;
    }
    catch (const std::exception& e)
    {
        std::cout << "std::exception: " << e.what() << std::endl;
    }
    catch (...)
    {
        std::cout << "Unknown exception occurs when running application" << std::endl;
    }
    std::cout << "=========================" << std::endl;
    try
    {
        L2HiPools l2HiPools{};
        L2HiPool l2HiPool{};
        auto primaryIter = l2HiPools.lower_bound(12);
        l2HiPools.emplace_hint(primaryIter, 12, std::move(l2HiPool));
        deleteContextImpl(l2HiPools);
    }
    catch (const std::exception& e)
    {
        std::cout << "std::exception: " << e.what() << std::endl;
    }
    catch (...)
    {
        std::cout << "Unknown exception occurs when running application" << std::endl;
    }*/
    std::cout << "+++++++++++++++++++++++++++++++++" << std::endl;
    return 1;
}

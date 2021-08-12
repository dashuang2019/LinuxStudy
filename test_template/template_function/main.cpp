#include <iostream>
#include <vector>

template <typename T>
int compare(const T& v1, const T& v2)
{
    if (v1 < v2) return -1;
    if (v1 > v2) return 1;
    return 0;
}

void testInt()
{
    std::cout << "void testInt void" << std::endl;
}

void testInt(int a)
{
    std::cout << "void testInt int a= " << a << std::endl;
}
void testInt(int& a)
{
    std::cout << "void testInt int& a= " << a << std::endl;
}
void testInt(int&& a)
{
    std::cout << "void testInt int&& a= " << a << std::endl;
}

int testIntRet()
{
    std::cout << "void testInt void" << std::endl;
    return 1;
}

char testIntRet(int a)
{
    std::cout << "void testIntRet int a= " << a << std::endl;
    return 'a';
}
double testIntRet(int& a)
{
    std::cout << "void testIntRet int& a= " << a << std::endl;
    return 0.0;
}
float testIntRet(int&& a)
{
    std::cout << "void testIntRet int&& a= " << a << std::endl;
    return 0.0;
}

int g_int = 12;
static int gs_int = 13;
constexpr int gc_int = 14;


class myClass
{
public:
    myClass(){}
    ~myClass(){}
    void setValue(int a) { m_a = a;}
    int getValue() {return m_a;}
private:
    int m_a;
};

int func(int)
{
    std::cout << "int func " << std::endl;
    return 1;
}

float func(float)
{
    std::cout << "float func " << std::endl;
    return 2.0;
}

int func(const std::vector<std::string>& vec)
{
    std::cout << "int func vector " << std::endl;
    return 3;
}

namespace NP1
{
    int func(int)
    {
        std::cout << "int func NP1" << std::endl;
        return 4;
    }

    class C
    {
    public:
        static int func(int);
    };

    int C::func(int)
    {
        std::cout << "int C::func NP1" << std::endl;
        return 5;
    }
};

namespace NP2
{
    int func(int)
    {
        std::cout << "int func NP2" << std::endl;
        return 6;
    }

    class C
    {
    public:
        static int func(int);
    };

    int C::func(int)
    {
        std::cout << "int C::func NP2" << std::endl;
        return 7;
    }
};

int main()
{
    std::cout << "Compare int result = " << compare(12, 23) << std::endl;
    std::cout << "Compare char result = " << compare('a', 'A') << std::endl;
    std::cout << "Compare string result = " << compare("hello", "world") << std::endl;
    
    myClass mc;
    mc.setValue(1234);
    std::cout << "myClass value = " << mc.getValue() << std::endl;
    
    std::vector<std::string> vec{"1","2","3","4"};
    std::cout << "int func = " << func(123) << std::endl;
    std::cout << "float func = " << func(float(12.34)) << std::endl;
    std::cout << "vector func = " << func(vec) << std::endl;

    std::cout << "int func NP1= " << NP1::func(345) << std::endl;
    std::cout << "int C::func NP1= " << NP1::C::func(456) << std::endl;

    std::cout << "int func NP2= " << NP2::func(567) << std::endl;
    std::cout << "int C::func NP2= " << NP2::C::func(678) << std::endl;
    return 0;
}
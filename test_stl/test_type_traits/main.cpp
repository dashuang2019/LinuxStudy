// This file is a "Hello, world!" in C++ language by GCC for wandbox.
#include <iostream>
#include <cstdlib>
#include <string>
#include <cstring>

template <class I, class T>
void func_impl(I iter, T t)
{
    T tmp = t;
    std::cout << "func_impl *iter=" << *iter << ", t=" << t << ", tmp=" << tmp << std::endl;
}

template <class I>
void func(I iter)
{
    func_impl(iter, *iter);
}

template <class T>
struct MyIter
{
    typedef T value_type;
    T * ptr;
    MyIter(T* p=nullptr):ptr(p){}
    T& operator*()const {return *ptr;}
};

template <class I>
typename I::value_type
//typename iterator_traits<I>::value_type value_type
funct(I iter)
{
    return *iter;
}

template<class T>
class testClass
{
public:
    static int data;
};

//int testClass<int>::data = 123;
//int testClass<char>::data = 9;

template <typename T>
class myIterator
{
    typedef  T value_type;
};
template <typename T>
typename myIterator<T>::value_type Foo(myIterator<T> i)
{
}
template <typename I> //这里的I可以是任意类型的迭代器
typename I::value_type Foo(I i)
{
}
/*
template <typename T>
class Traits
{
    typedef typename T::value_type value_type;
};

template <typename I> //这里的I可以是任意类型的迭代器
typename Traits<I>::value_type Foo(I i)
{
}

template <typename T>
class Traits<T*> //注意 这里针对原生指针进行了偏特化
{
    typedef typename T value_type;
};
*/

using namespace std;
struct __TrueType
{
    __TrueType(){cout << "__TrueType constructor" << endl;}
    ~__TrueType(){cout << "__TrueType destructor" << endl;}
};
struct __FalseType
{
    __FalseType(){cout << "__FalseType constructor" << endl;}
    ~__FalseType(){cout << "__FalseType destructor" << endl;}
};

template<typename T>
struct __TypeTraits
{
    typedef __FalseType IsPODType; // 内嵌重定义
    __TypeTraits(){cout << "__TypeTraits T constructor" << endl;}
    ~__TypeTraits(){cout << "__TypeTraits T destructor" << endl;}
};

template<>
struct __TypeTraits<int>
{
    typedef __TrueType IsPODType;
    __TypeTraits(){cout << "__TypeTraits int constructor" << endl;}
    ~__TypeTraits(){cout << "__TypeTraits int destructor" << endl;}
};

template<>
struct __TypeTraits<unsigned int>
{
    typedef __TrueType IsPODType;
    __TypeTraits(){cout << "__TypeTraits unsigned int constructor" << endl;}
    ~__TypeTraits(){cout << "__TypeTraits unsigned int destructor" << endl;}
};

template<>
struct __TypeTraits<char>
{
    typedef __TrueType IsPODType;
    __TypeTraits(){cout << "__TypeTraits char constructor" << endl;}
    ~__TypeTraits(){cout << "__TypeTraits char destructor" << endl;}
};

template<>
struct __TypeTraits<double>
{
    typedef __TrueType IsPODType;
    __TypeTraits(){cout << "__TypeTraits double constructor" << endl;}
    ~__TypeTraits(){cout << "__TypeTraits double destructor" << endl;}
};

//具体实现对一种引用memcpy浅拷贝
template<typename T>
T* __TypeCopy(T* dst, const T* src, size_t n, __TrueType)
{
    // int char...
    cout<<"memcpy"<<endl;
    return (T*)memcpy(dst, src, n*sizeof(T));
}

//对于像string类型的进行深拷贝
template<typename T>
T* __TypeCopy(T* dst, const T* src, size_t n, __FalseType)
{
    // string
    cout<<"for+operator="<<endl;
    for (size_t i = 0; i < n; ++i)
    {
        dst[i] = src[i]; // operator=
    }
    return dst;
}

//最终提供给用户的拷贝函数
template<class T>
T* TypeCopy(T* dst, const T* src, size_t n)
{
    std::cout << "**************" << std::endl;
    return __TypeCopy(dst, src, n, typename __TypeTraits<T>::IsPODType());
}

void TestCopy()
{
    int a1[3] = {1, 2, 3};
    int a2[3] = {0, 0, 0};
    TypeCopy(a1, a2, 3);
    std::cout << "++++++++++++++++++++++++++" << std::endl;
    std::string s1[3] = {"11", "22", "33"};
    std::string s2[3] = {"0", "0", "0"};
    TypeCopy(s1, s2, 3);
}

int main()
{
    std::cout << "Hello, Wandbox!" << std::endl;
    int i = 123;
    func(&i);
    std::cout << "--------------------" << std::endl;
    MyIter<int> myIter = new int(8);
    std::cout << "value=" << funct(myIter) << std::endl;
    std::cout << "--------------------" << std::endl;
    /*std::cout << testClass<int>::data << std::endl;
    std::cout << testClass<char>::data << std::endl;
    testClass<int> ti1, ti2;
    testClass<char> tc1, tc2;
    std::cout << "ti1=" << ti1.data << ", ti2=" << ti2.data << std::endl;
    std::cout << "tc1=" << tc1.data << ", tc2=" << tc2.data << std::endl;*/
    
    unsigned int ui1 = 123;
    std::uint8_t ui8 = 234;
    std::cout << "ui1=" << ui1 << std::endl;
    std::cout << "ui8=" << (unsigned int)(ui8) << std::endl;
    std::cout << "ui8=" << static_cast<unsigned int>(ui8) << std::endl;
    std::cout << "--------------------" << std::endl;
    TestCopy();
}

// GCC reference:
//   https://gcc.gnu.org/

// C++ language references:
//   https://cppreference.com/
//   https://isocpp.org/
//   http://www.open-std.org/jtc1/sc22/wg21/

// Boost libraries references:
//   https://www.boost.org/doc/

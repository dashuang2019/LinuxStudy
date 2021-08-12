#include <iostream>

template<long int N>
class Fibonacci {
public:
    enum { value = Fibonacci<N-1>::value + Fibonacci<N-2>::value };
};

template<>
class Fibonacci<1> {
public:
    enum { value = 1 };
};

template<>
class Fibonacci<0> {
public:
    enum { value = 0 };
};

void test_Fib()
{
    std::cout << Fibonacci<30>::value << std::endl;
}
/**/
template<long int N, typename T = long int>
struct fibonacci {
    static constexpr T value = fibonacci<N-1,T>::value + fibonacci<N-2,T>::value;
};

template<typename T>
struct fibonacci<1,T> {
    static constexpr T value = 1;
};

template<typename T>
struct fibonacci<0,T> {
    static constexpr T value = 0;
};

void testFibonacci()
{
    std::cout << fibonacci<40>::value << std::endl;
}

int main()
{
	std::cout << "-------- main start ---------" << std::endl;
	test_Fib();
	std::cout << "-----------------" << std::endl;
	testFibonacci();
	std::cout << "-----------------" << std::endl;
    getchar();
    return 0;
}

/*
* g++ main.cpp -Wall -E
*/
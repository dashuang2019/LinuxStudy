#include <iostream>

template<typename T> 
void fTestLRvalue(T&& i){
    std::cout << "fTestLRvalue(T&&),i=" << i << std::endl;
    i = 345;
}

template<typename T> 
void fTestLRvalue(T& i){
    std::cout << "fTestLRvalue(T&),i=" << i << std::endl;
    i = 456;
}

struct AStruct {
    int value;
    explicit AStruct(int value) : value(value) {
        std::cout << "construct" << std::endl;
    }
    ~AStruct() {
        std::cout << "deconstruct" << std::endl;
    }
};

void test(AStruct&& a, double b) {
    std::cout << a.value << " " << b << std::endl;
}

void test(int&& a) {
    std::cout << a << std::endl;
}

template <class... Args>
void test_forward(Args&... args) {
    std::cout << "test_forward(Args&... args)" << std::endl;
    test(std::forward<Args>(args)...);
}
template <class... Args>
void test_forward(Args&&... args) {
    std::cout << "test_forward(Args&&... args)" << std::endl;
    test(std::forward<Args>(args)...);
}

int main() 
{
    int i = 42;
	{
    fTestLRvalue(i);
    std::cout << "after i=" << i << std::endl;
	}
	{
    fTestLRvalue(std::move(i));
    std::cout << "after 1 i=" << i << std::endl;
	}
	{
    fTestLRvalue(2);
    std::cout << "after 2 i=" << i << std::endl;
	}
	{
    fTestLRvalue(std::move(2));
    std::cout << "after 3 i=" << i << std::endl;
	}
    std::cout << "------------------------" << std::endl;
    AStruct a(1);
    float b = 2.1;
    test_forward(a, b);
    a.value = 2;
    test_forward(a, b);
    test_forward(123);
}
#include <iostream>
#include <memory>
#include <thread>
#include <chrono>
#include <mutex>
 
struct Base
{
    Base() { std::cout << "  Base::Base()\n"; }
    // 注意：此处非虚析构函数 OK
    virtual ~Base() { std::cout << "  virtual Base::~Base()\n"; }
    //~Base() { std::cout << "  non-virtual Base::~Base()\n"; }
};
 
struct Derived: public Base
{
    Derived() { std::cout << "  Derived::Derived()\n"; }
    ~Derived() { std::cout << "  Derived::~Derived()\n"; }
};

int main()
{
    std::cout << "\n------------------------------------------------\n";
    {
        std::cout << "Use shared_ptr:\n";
        std::shared_ptr<Base> p = std::make_shared<Derived>();
        std::cout << "use_count : " << p.use_count() << std::endl;
        auto del_p = std::get_deleter<Base>(p);
        std::cout << "Default deleter Base : " << del_p << std::endl;
        auto del_pd = std::get_deleter<Derived>(p);
        std::cout << "Default deleter Derived : " << del_pd << std::endl;
        std::cout << "....................\n";
    }
    std::cout << "------------------------------------------------\n";
    {
        std::cout << "Use unique_ptr:\n";
        std::unique_ptr<Base> p = std::make_unique<Derived>();
    }
    std::cout << "------------------------------------------------\n";
    {
        std::cout << "Use new:\n";
        Base* p = new Derived();
        delete p;
    }
}
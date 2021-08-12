// This file is a "Hello, world!" in C++ language by GCC for wandbox.
#include <iostream>
#include <cstdlib>
#include <memory>

class CBase
{
public:
    CBase() {};
     ~CBase() { std::cout  <<   "++ CBase destructor."   <<  std::endl; };
    virtual void DoSomething() { std::cout  << "++ CBase DoSomething." << std::endl; };
};

class CDerived : public CBase
{
public:
    CDerived() {};
    ~CDerived() { std::cout  <<   "-- CDerived destructor."   <<  std::endl; }; 
    void DoSomething() { std::cout << "-- CDerived DoSomething."  << std::endl; };
};

typedef void(*FunDoSomething)(void);

int main()
{
    std::cout << "Hello, Wandbox!" << std::endl;
    /*{
        std::cout << "Use std::make_shared_ptr to create object" << std::endl;
        std::shared_ptr<CBase> pBase = std::make_shared<CDerived>();
        pBase->DoSomething();
    }
    {
        std::cout << "Use new to create object" << std::endl;
        CBase* pBase = new CDerived();
        pBase->DoSomething();
        delete pBase;
    }
    {
        CBase b;
        FunDoSomething pFun = NULL;
        CBase* pB = &b;
        std::cout << "虚函数表地址：" << pB << std::endl;  //cout << "虚函数表地址：" << (int*)(&b) << endl;
        std::cout << "虚函数表地址：" << (long*)(&b) << std::endl;
        std::cout << "虚函数表 — 第一个函数地址：" << (long*)*(long*)(&b) << std::endl;
        // Invoke the first virtual function
        pFun = (FunDoSomething)*((long*)(*((long*)(&b))));
        //pFun = static_cast<FunDoSomething>(static_cast<int*>(*(int*)(&b)));
        pFun();
    }
    {
        using namespace std;
        class Base
        {
        public:
            //Base(){ cout << "Base constructor" << endl; }
            //~Base(){ cout << "Base destructor" << endl; }
            virtual void f() { cout << "Base::f" << endl; }
            virtual void g() { cout << "Base::g" << endl; }
            virtual void h() { cout << "Base::h" << endl; }
        };
        class Derived : public Base
        {
        public:
            virtual void f() { cout << "Derived::f" << endl; }
            virtual void g1() { cout << "Derived::g1" << endl; }
            virtual void h1() { cout << "Derived::h1" << endl; }
        };
        typedef void(*Fun)(void);
        Base b;
        Fun pFun = NULL;
        cout << "虚函数表地址：" << (long*)(&b) << endl;
        cout << "虚函数表 — 第一个函数地址：" << (long*)*(long*)(&b) << endl;
        // Invoke the first virtual function
        pFun = (Fun)*((long*)*(long*)(&b));
        pFun();
        pFun = (Fun)*((long*)*(long*)(&b)+1);
        pFun();
        pFun = (Fun)*((long*)*(long*)(&b)+2);
        pFun();
        cout << "---------------" << endl;
        Derived d;
        pFun = (Fun)*((long*)*(long*)(&d));
        pFun();
        pFun = (Fun)*((long*)*(long*)(&d)+1);
        pFun();
        pFun = (Fun)*((long*)*(long*)(&d)+2);
        pFun();
        pFun = (Fun)*((long*)*(long*)(&d)+3);
        pFun();
        pFun = (Fun)*((long*)*(long*)(&d)+4);
        pFun();
        //pFun = (Fun)*((long*)*(long*)(&d)+5);
        //pFun();
        cout << "---------------" << endl;
        Base* pb = new Derived();
        pb->f();
        delete pb;
    }
    {
    using namespace std;
        class Base1
        {
        public:
            virtual void f() { cout << "Base1::f" << endl; }
            virtual void g() { cout << "Base1::g" << endl; }
            virtual void h() { cout << "Base1::h" << endl; }
        };
        class Base2
        {
        public:
            virtual void f() { cout << "Base2::f" << endl; }
            virtual void g() { cout << "Base2::g" << endl; }
            virtual void h() { cout << "Base2::h" << endl; }
        };
        class Base3
        {
        public:
            virtual void f() { cout << "Base3::f" << endl; }
            virtual void g() { cout << "Base3::g" << endl; }
            virtual void h() { cout << "Base3::h" << endl; }
        };
        class Derive : public Base1, public Base2, public Base3
        {
        public:
            virtual void f() { cout << "Derive::f" << endl; }
            virtual void g1() { cout << "Derive::g1" << endl; }
        };
        typedef void(*Fun)(void);
        Derive d;
        Fun pFun = NULL;
        cout << "虚函数表地址：" << (long*)(&d) << endl;
        cout << "虚函数表 — 第一个函数地址：" << (long*)*(long*)(&d) << endl;
        // Invoke the first virtual function
        long** pVtab = (long**)&d;
            //Base1's vtable
            //pFun = (Fun)*((int*)*(int*)((int*)&d+0)+0);
            pFun = (Fun)pVtab[0][0];
            pFun();
            //pFun = (Fun)*((int*)*(int*)((int*)&d+0)+1);
            pFun = (Fun)pVtab[0][1];
            pFun();
            //pFun = (Fun)*((int*)*(int*)((int*)&d+0)+2);
            pFun = (Fun)pVtab[0][2];
            pFun();
            //Derive's vtable
            //pFun = (Fun)*((int*)*(int*)((int*)&d+0)+3);
            pFun = (Fun)pVtab[0][3];
            pFun();
            //The tail of the vtable
            pFun = (Fun)pVtab[0][4];
            cout<<pFun<<endl;
            //Base2's vtable
            //pFun = (Fun)*((int*)*(int*)((int*)&d+1)+0);
            pFun = (Fun)pVtab[1][0];
            pFun();
            //pFun = (Fun)*((int*)*(int*)((int*)&d+1)+1);
            pFun = (Fun)pVtab[1][1];
            pFun();
            pFun = (Fun)pVtab[1][2];
            pFun();
            //The tail of the vtable
            pFun = (Fun)pVtab[1][3];
            cout<<pFun<<endl;
            //Base3's vtable
            //pFun = (Fun)*((int*)*(int*)((int*)&d+1)+0);
            pFun = (Fun)pVtab[2][0];
            pFun();
            //pFun = (Fun)*((int*)*(int*)((int*)&d+1)+1);
            pFun = (Fun)pVtab[2][1];
            pFun();
            pFun = (Fun)pVtab[2][2];
            pFun();
            //The tail of the vtable
            pFun = (Fun)pVtab[2][3];
            cout<<pFun<<endl;
        cout << "---------------" << endl;
    }*/
    {
        using namespace std;
        class Base
        {
        private:
            virtual void f() { cout << "Base::f" << endl; }
        };
        class Derive : public Base
        {
        };
        typedef void(*Fun)(void);
        Derive d;
        Fun  pFun = (Fun)*((long*)*(long*)(&d)+0);
        pFun();
    }
}

// GCC reference:
//   https://gcc.gnu.org/

// C++ language references:
//   https://cppreference.com/
//   https://isocpp.org/
//   http://www.open-std.org/jtc1/sc22/wg21/

// Boost libraries references:
//   https://www.boost.org/doc/

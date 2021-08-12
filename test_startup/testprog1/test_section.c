#include <stdio.h>

struct test {
        int a;
        int b;
};

struct test t11 __attribute__((section(" st1"))) = {
        .a = 0x00112233,
       .b = 0xffeeddcc
};
struct test t12 __attribute__((section(" st1")));
struct test t13 __attribute__((section(" st1"))) = {
        . a = 0x01234567,
        .b = 0xfedcba98
};

struct test __attribute__((section("st2"))) t2;

__attribute__((section("st3"))) struct test t3;

extern struct test __start_st1;
extern struct test __stop_st1;

int main()
{
        t11.a = 11; t11.b = 12;
        t2.a = 21; t2.b = 22;
        t3.a = 31; t3.b = 32;
        int i = 0;
        printf("__startt11: %p\n", &__start_st1);
        printf("__stopt11: %p\n", &__stop_st1);
        printf("size: %d\n", abs((long)& __start_st1- (long)& __stop_st1));

        printf("t1.a:%d, t1.b: %d\n", t11.a, t11.b);
        printf("t2.a:%d, t2.b: %d\n", t2.a, t2.b);
        printf("t3.a:%d, t3.b: %d\n", t3.a, t3.b);
        return 0;
}

#include<gtest/gtest.h>

#include "BubbleSort.hpp"

TEST(testCase,test0)
{
    EXPECT_EQ(BubbleSort(),1);
}

int main(int argc,char **argv)
{
    testing::InitGoogleTest(&argc,argv);
    return RUN_ALL_TESTS();
}
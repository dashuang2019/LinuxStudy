CMAKE_MINIMUM_REQUIRED (VERSION 3.13)

INCLUDE_DIRECTORIES(
    ../include
	../src
    /var/fpwork/dmeng/5GNB/sdk5g/prefix_root_NATIVE-gcc/usr/include
)

AUX_SOURCE_DIRECTORY(../src DIRSRCS)  

LINK_DIRECTORIES(
    /var/fpwork/dmeng/5GNB/sdk5g/prefix_root_NATIVE-gcc/usr/lib64
)

link_libraries(gtest pthread)

ADD_EXECUTABLE (TestBubbleSort BubbleSort.cpp TestBubbleSort.cpp)
CMAKE_MINIMUM_REQUIRED (VERSION 3.13)

PROJECT(BubbleSort)

set(MODULE_NAME BubbleSort)

INCLUDE_DIRECTORIES(
    include
)

AUX_SOURCE_DIRECTORY(src DIRSRCS)  

#set(PUBLIC_HEADERS
#    include/BubbleSort.hpp
#)

#set(INTERNAL_FILES
#    src/BubbleSort.cpp
#)

#ADD_LIBRARY(${MODULE_NAME} ${INTERNAL_FILES} ${PUBLIC_HEADERS})

ADD_EXECUTABLE(BubbleSort ${DIRSRCS})

#target_link_libraries(helloworld hello world)

ADD_SUBDIRECTORY(ut)


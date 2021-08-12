INCLUDE_DIRECTORIES(/var/fpwork/dmeng/cmake_study/t3/lib)

LINK_DIRECTORIES(/var/fpwork/dmeng/cmake_study/t3/build/build/bin/)
TARGET_LINK_LIBRARIES(main PUBLIC libhello.so)

ADD_EXECUTABLE(main main.c)

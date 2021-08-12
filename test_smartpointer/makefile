##########################################3

MODULE_NAME = test_smartpointer

CC = gcc
GXX = g++

CFLAGS = -Wall -O2 -g -ggdb
CXXFLAGS = $(CFLAGS) -std=c++14
#LINKFLAGS = -lpthread

TARGET = $(MODULE_NAME)

OBJS = *.o

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.o:%.cpp
	@echo $(MODULE_NAME) cpp
	$(GXX) $(CXXFLAGS) -c $< -o $@

SOURCES = $(wildcard *.c *.cpp)

OBJS = $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(SOURCES)))

$(TARGET) : $(OBJS)
	$(GXX) $(OBJS) -o $(LINKFLAGS) $(TARGET)
	chmod a+x $(TARGET)
	@echo $(MODULE_NAME)

clean:
	rm -rf *.o $(MODULE_NAME)


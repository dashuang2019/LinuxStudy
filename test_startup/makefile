##########################################3

MODULE_NAME = test_adaptor

CC = gcc
GXX = g++

CFLAGS = -Wall -O2 # -g -ggdb
CXXFLAGS = $(CFLAGS) -std=c++11
#LINKFLAGS = -lCCS

TARGET = $(MODULE_NAME)

OBJS = *.o

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.o:%.cpp
	@echo test_echo cpp
	$(GXX) $(CXXFLAGS) -c $< -o $@

SOURCES = $(wildcard *.c *.cpp)

OBJS = $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(SOURCES)))

$(TARGET) : $(OBJS)
	$(GXX) $(OBJS) -o $(LINKFLAGS) $(TARGET)
	chmod a+x $(TARGET)
	@echo test_echo

clean:
	rm -rf *.o $(MODULE_NAME)


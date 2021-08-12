##########################################3

CC = gcc
GXX = g++

CFLAGS = -Wall -O2 -g -ggdb

TARGET = test_main

OBJS = *.o

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.o:%.cpp
	@echo test_main cpp
	$(GXX) $(CFLAGS) -c $< -o $@

SOURCES = $(wildcard *.c *.cpp)

OBJS = $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(SOURCES)))

$(TARGET) : $(OBJS)
	$(GXX) $(OBJS) -o $(TARGET)
	chmod a+x $(TARGET)
	@echo test_main

clean:
	rm -rf *.o test_main


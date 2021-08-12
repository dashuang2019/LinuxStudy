##########################################3

CC = gcc
GXX = g++

CFLAGS = -Wall -O2 -g -ggdb

TARGET = test_fork

OBJS = *.o

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
#$(CC) -E  -c $< -o $@

%.o:%.cpp
	@echo test_echo cpp
	$(GXX) $(CFLAGS) -c $< -o $@

SOURCES = $(wildcard *.c *.cpp)

OBJS = $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(SOURCES)))

$(TARGET) : $(OBJS)
	$(GXX) $(OBJS) -o $(TARGET)
	chmod a+x $(TARGET)
	@echo test_echo

#all: test_fork
#	${CC} test_fork.o -o test_fork

#test_fork.o:
#	${CC} -c test_fork.c

clean:
	rm -rf *.o test_fork


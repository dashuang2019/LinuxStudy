##########################################3

CC = gcc
GXX = g++

CFLAGS = -Wall -O -g

TARGET = test_fork

OBJS = *.o

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.o:%.cpp
	$(GXX) $(CFLAGS) -c $< -o $@

SOURCES = $(wildcard *.c *.cpp)

OBJS = $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(SOURCES)))

$(TARGET) : $(OBJS)
	$(GXX) $(OBJS) -o $(TARGET)
	chmod a+x $(TARGET);./$(TARGET)

#all: test_fork
#	${CC} test_fork.o -o test_fork

#test_fork.o:
#	${CC} -c test_fork.c

clean:
	rm -rf *.o test_fork *.bak


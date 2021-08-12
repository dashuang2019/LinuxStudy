##########################################3

CC = gcc
GXX = g++

CFLAGS = -Wall -O2 -g 

LIBS = -lsctp

TARGET = sctp_server

OBJS = *.o

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.o:%.cpp
	@echo test_echo cpp
	$(GXX) $(CFLAGS) -c $< -o $@

SOURCES = $(wildcard *.c *.cpp)

OBJS = $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(SOURCES)))

$(TARGET) : $(OBJS)
	$(GXX) $(OBJS) -o $(TARGET)  $(LIBS)
	chmod a+x $(TARGET)
	@echo test_echo



clean:
	rm -rf *.o sctp_server


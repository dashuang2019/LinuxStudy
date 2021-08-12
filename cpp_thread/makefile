##########################################3

BOOST_INC = /opt/boost/x86_64/1.64.0/include/
BOOST_LIB = /opt/boost/x86_64/1.64.0/lib/

CC = gcc
GXX = g++

CFLAGS = -Wall -O2 -g -I${BOOST_INC} 

LIBS =  -lpthread -L./ -lboost_system  -lboost_program_options

TARGET = cpp_thread

OBJS = *.o

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.o:%.cpp
	@echo test_echo cpp
	$(GXX) $(CFLAGS) -c $< -o $@

SOURCES = $(wildcard *.c *.cpp)

OBJS = $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(SOURCES)))

$(TARGET) : $(OBJS)
	$(GXX) $(OBJS) -o $(TARGET) $(LIBS)
	chmod a+x $(TARGET)
	@echo test_echo



clean:
	rm -rf *.o cpp_thread


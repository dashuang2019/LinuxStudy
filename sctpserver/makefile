# make
 
CC := gcc
CFLAGS := -Wall
 
all: sctp_client sctp_server
 
sctp_client: sctp_client.o
	$(CC) $(CFLAGS) -o $@ sctp_client.c -L/usr/local/lib -lsctp
 
sctp_server: sctp_server.o
	$(CC) $(CFLAGS) -o $@ sctp_server.c -L/usr/local/lib -lsctp
 
clean:
	rm -f sctp_client sctp_server *.o
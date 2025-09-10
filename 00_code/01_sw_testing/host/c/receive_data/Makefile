CC = gcc
CFLAGS = -g -I. -lpthread -Wall 
PROG = server.elf
OBJ = tcpserver

PORT = 5000

$(PROG): $(OBJ).o
	$(CC) -o $(PROG) tcpserver.o $(CFLAGS)

all: $(PROG)

run: $(PROG)
	./$(PROG) $(PORT)

clean:
	rm -f $(OBJ).o $(PROG)


CC = gcc
CFLAGS = -g -I. -lpthread -Wall 
PROG = server.elf
OBJ = tcpserver

PORT = 5000

$(PROG): $(OBJ).o
	$(CC) -o $(PROG) tcpserver.o $(CFLAGS)

all: $(PROG)

run_server: $(PROG)
	./$(PROG) $(PORT)
	
run_term:
	gtkterm -s 115200 -p /dev/ttyUSB1 &
	
run_all: $(run_term) $(run_server)
	
clean:
	rm -f $(OBJ).o $(PROG)


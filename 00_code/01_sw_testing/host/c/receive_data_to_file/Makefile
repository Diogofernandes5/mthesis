CC = gcc
CFLAGS = -g -Wall -Iinc -lpthread
SRC_DIR = src
INC_DIR = inc
OBJ_DIR = obj

PROG = server.elf
SRC = $(wildcard $(SRC_DIR)/*.c)
OBJ = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC))

PORT = 5000

# Default target
all: $(PROG)

# Create obj dir if needed and compile
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	$(CC) -c $< -o $@ $(CFLAGS)

# Link all object files into final executable
$(PROG): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

# Create object directory if it does not exist
$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

# Run the server
run_server: $(PROG)
	./$(PROG) $(PORT)

# Run gtkterm
run_term:
	gtkterm -s 115200 -p /dev/ttyUSB1 &

# Run both
run_all: run_term run_server

# Clean up
clean:
	rm -rf $(OBJ_DIR) $(PROG)


# Variables
CC = $(CROSS_COMPILE)gcc
CFLAGS = -Wall -Wextra -Werror

# Targets
writer: writer.o
	$(CC) writer.o -o writer

writer.o: writer.c
	$(CC) $(CFLAGS) -c writer.c -o writer.o

.PHONY: clean
clean:
	rm -f writer writer.o

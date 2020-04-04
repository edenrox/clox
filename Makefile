CC = gcc
CFLAGS = -Wall -g
HEADERS=$(wildcard *.h)
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)
TARGET=main

%.o: %.c $(HEADERS)
	$(CC) -c -o $@ $< $(CFLAGS)

all: clox

clox: $(OBJS)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	rm clox *.o
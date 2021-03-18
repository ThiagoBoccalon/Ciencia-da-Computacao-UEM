CC = gcc
CFLAGS = -g -ggdb -Wall
OBJS = main.o estrutura_arquitetura.o  carrega_memoria.o util.o
BIN = main

all: $(OBJS) 
	$(CC) -o $(BIN) $(CFLAGS) $(OBJS) -lm

clean:
	rm $(OBJS) color *~



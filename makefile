TARGET=main
CC=g++
DEBUG=-g
OPT=-O0
WARN=-Wall
PTHREAD=-pthread
CCFLAGS=$(DEBUG) $(OPT) $(WARN) $(PTHREAD) -pipe
LD=g++
LDFLAGS=$(PTHREAD) -export-dynamic
NAME=main
OBJS=src/$(NAME).o
all: $(OBJS)
	$(LD) -o $(TARGET) $(OBJS) $(LDFLAGS)

main.o: src/main.cpp
	$(CC) -c $(CCFLAGS) src/main.cpp -o src/main.o

clean:
	rm -f src/*.o

exec:
	./$(NAME)
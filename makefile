LIBS= 
CPPFLAGS=-g -O0 -Wall -pthread -pipe -export-dynamic
SRC=$(wildcard src/*.cpp)

Programa: $(SRC)
	g++ -o $@ $^ $(CPPFLAGS) $(LIBS)

clean:
	rm Programa
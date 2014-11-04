# I hate Makefiles and I have no idea what's going on here

LD=ld
CC=gcc
CFLAGS=-c -Wall
SOURCES=src/main.c src/system.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=bin/eightchips

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@
	
.c.o:
	$(CC) $(CFLAGS) $< -o $@
	
clean:
	$(RM) bin/* src/*.o

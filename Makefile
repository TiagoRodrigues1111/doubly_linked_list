CC = gcc
CFLAGS = -Wall -Wextra -g
OBJ = simplemain.o doublelinkedlist.o
TARGET = double_linked_list_test

# Default target
all: $(TARGET)

run: $(TARGET)
	./$(TARGET)



$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET)



simplemain.o: simplemain.c doublelinkedlist.h
	$(CC) $(CFLAGS) -c simplemain.c





doublelinkedlist.o: doublelinkedlist.c doublelinkedlist.h
	$(CC) $(CFLAGS) -c doublelinkedlist.c



clean:
	rm -f $(OBJ) $(OBJ_ll) $(TARGET)



rebuild: clean all

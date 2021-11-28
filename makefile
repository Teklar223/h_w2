#VARIABLES:
CC=gcc
AR=ar
OBJECTS_mat = my_mat.o 
OBJECTS_Main = main.o
FLAGS= -Wall -g

all: connections 


connections: $(OBJECTS_Main) libmy_mata.a
	$(CC) $(FLAGS) -o connections $(OBJECTS_Main) libmy_mata.a

libmy_mata.a: $(OBJECTS_mat) 
	$(AR) -rcs libmy_mata.a $(OBJECTS_mat)

my_mat.o: my_mat.c my_mat.h
	$(CC) $(FLAGS) -c my_mat.c


main.o: main.c my_mat.h
	$(CC) $(FLAGS) -c main.c 

.PHONY: clean all

clean:
	rm -f *.o *.so connections libmy_mata.a
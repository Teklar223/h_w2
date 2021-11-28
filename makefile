.PHONY: clean al

all: connections

connections: main.o libmy_mat.a
	gcc -Wall -g -o connections main.o my_mat.a -lm

libmy_mat.a: my_mat.o
	ar -rcs libmy_mat.a my_mat.o

#mm.so: my_mat.o
#	gcc -shared -o mm.so my_mat.o

my_mat.o: my_mat.c my_mat.h
	gcc -Wall -g -c my_mat.c -lm

main.o: main.c my_mat.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o *.a *.so connections
.PHONY: clean al

all: main

main: main.o my_mat.so
	gcc -Wall -g -o mains main.o libclassrec.a -lm

#my_mat.a: my_mat.o
#	ar -rcs my_mat.a my_mat.o

my_mat.so: my_mat.o
	gcc -shared -o lmy_mat.so my_mat.o


my_mat.o: my_mat.c my_mat.h
	gcc -Wall -g -c my_mat.c -lm


basicClassification.o: basicClassification.c NumClass.h
	gcc -Wall -g -c basicClassification.c -lm

main.o: main.c my_mat.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o *.a *.so main
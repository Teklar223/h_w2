.PHONY: clean al

all: loops loopd recursives recursived mains maindloop maindrec

loops: libclassloops.a
loopd: libclassloops.so
recursives: libclassrec.a
recursived: libclassrec.so

mains: main.o libclassrec.a
	gcc -Wall -g -o mains main.o libclassrec.a -lm


libclassloops.a: advancedClassificationLoop.o basicClassification.o
	ar -rcs libclassloops.a advancedClassificationLoop.o basicClassification.o


libclassloops.so: advancedClassificationLoop.o basicClassification.o
	gcc -shared -o libclassloops.so advancedClassificationLoop.o basicClassification.o

advancedClassificationLoop.o: advancedClassificationLoop.c NumClass.h
	gcc -Wall -g -c advancedClassificationLoop.c -lm



basicClassification.o: basicClassification.c NumClass.h
	gcc -Wall -g -c basicClassification.c -lm

main.o: main.c my_mat.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o *.a *.so main
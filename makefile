CC = gcc -Wall -O3 -ansi -pedantic

all: main clean

main: main.o noeud.o arbre.o outilsArbre.o pile.o outilsPile.o
	$(CC) -o main main.o noeud.o arbre.o outilsArbre.o pile.o outilsPile.o -lm

main.o: main.c
	$(CC) -o main.o -c main.c

noeud.o: noeud.c noeud.h
	$(CC) -o noeud.o -c noeud.c

arbre.o: arbre.c arbre.h
	$(CC) -o arbre.o -c arbre.c

outilsArbre.o: outilsArbre.c outilsArbre.h
	$(CC) -o outilsArbre.o -c outilsArbre.c

pile.o: pile.c pile.h
	$(CC) -o pile.o -c pile.c

outilsPile.o: outilsPile.c outilsPile.h
	$(CC) -o outilsPile.o -c outilsPile.c

clean:
	rm -rf *.o
			

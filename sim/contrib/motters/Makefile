FILES=../../universe/sim.c ../../entity/being.c ../../entity/metabolism.c ../../entity/body.c ../../command/genealogy.c ../../command/graph.c ../../entity/brain.c ../../noble/land.c ../../entity/social.c ../../entity/episodic.c ../../entity/food.c ../../entity/drives.c ../../entity/speak.c ../../universe/file.c ../../noble/math.c ../../noble/io.c ../../noble/parse.c ../../universe/console.c ../../noble/interpret.c web.c

all:
	gcc -Wall -ansi -pedantic -O3 -o naweb cle.c pnglite.c -lz ${FILES} -lm -lpthread
 
debug:
	gcc -Wall -ansi -pedantic -g -o naweb cle.c pnglite.c -lz ${FILES} -lm -lpthread

clean:
	rm -f naweb

cleanall:
	rm -f naweb *.png realtime.* *.htm *.csv



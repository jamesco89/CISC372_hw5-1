all: image imagePhreads imageOpenmp

image: image.c image.h
	gcc -g image.c -o image -lm

imagePthreads: imagePthreads.c imagePthreads.h
	gcc -g imagePthreads.c -o imagePthreads -lm -lpthread

imageOpenmp: imageOpenmp.c imageOpenmp.h
	gcc -g imageOpenmp.c -o imageOpenmp -lm -fopenmp

clean:
	rm -rf image imagePthreads output.png

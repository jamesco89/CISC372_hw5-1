all: image imageOpenmp imagePhreads

image: image.c image.h
	gcc -g image.c -o image -lm

imageOpenmp: imageOpenmp.c imageOpenmp.h
	gcc -g imageOpenmp.c -o imageOpenmp -lm -fopenmp

imagePthreads: imagePthreads.c imagePthreads.h
	gcc -g imagePthreads.c -o imagePthreads -lm -lpthread

clean:
	rm -rf image imageOpemmp imagePhreads output.png

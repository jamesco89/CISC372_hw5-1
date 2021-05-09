all: image imageOpenmp imagePhreads

image: image.c image.h
	gcc -g image.c -o image -lm

imageOpenmp: imageOpenmp.c imageOpenmp.h
	gcc -g -fopenmp imageOpenmp.c -o imageOpenmp

imagePthreads: imagePthreads.c imagePthreads.h
	gcc -g -lpthread imagePthreads.c -o imagePthreads 

clean:
	rm -rf image imageOpemmp imagePhreads output.png

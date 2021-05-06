all: image imagePhreads

image: image.c image.h
	gcc -g image.c -o image -lm

imagePthreads: imagePthreads.c image.h
	gcc -g imagePthreads.c -o imagePthreads -lm -lpthread

clean:
	rm -rf image imagePthreads output.png

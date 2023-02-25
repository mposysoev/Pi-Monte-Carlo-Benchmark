debuggsl:
	gcc -Wall -Wextra -Wpedantic -I/usr/local/include -c main-ver2.c
	gcc -L/usr/local/lib main-ver2.o -lgsl -lgslcblas -lm -o exe-gsl-debug
	
releasegls:
	gcc -Ofast -march=native -mtune=native -ffast-math -I/usr/local/include -c main-ver2.c
	gcc -L/usr/local/lib main-ver2.o -lgsl -lgslcblas -lm -o exe-gsl-simple

releaseglsstatic:
	gcc -Ofast -flto -march=native -mtune=native -fomit-frame-pointer -fno-signed-zeros -fno-trapping-math -fassociative-math -ffast-math -I/usr/local/include -c main-ver2.c
	gcc -L/usr/local/lib main-ver2.o -lgsl -lgslcblas -lm -o exe-gsl-static

static:
	gcc main-ver1.c -O3 -s -static -flto -march=native -mtune=native -fomit-frame-pointer -fno-signed-zeros -fno-trapping-math -fassociative-math -ffast-math -o exe-nogsl-static

simple:
	gcc main-ver1.c -Ofast -march=native -mtune=native -ffast-math -o exe-nogsl-simple


clean:
	rm *.o exe-*
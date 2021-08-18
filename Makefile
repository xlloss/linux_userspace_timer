test_timer: timer.o libtimer.o
	${CROSS_COMPILE}gcc -o test_timer timer.o libtimer.o -lpthread

timer.o: timer.c
	${CROSS_COMPILE}gcc -c timer.c

libtimer.a: libtimer.o
	${CROSS_COMPILE}ar rcs libtimer.a libtimer.o

libtimer.o: libtimer.c
	${CROSS_COMPILE}gcc -c libtimer.c

clean:
	rm *.o *.a test_timer

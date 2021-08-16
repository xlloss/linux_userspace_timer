test_timer: timer.o mytimer.o
	gcc -o test_timer timer.o mytimer.o -lpthread 

timer.o: timer.c
	gcc -c timer.c

mytimer.o: mytimer.c
	gcc -c mytimer.c

clean:
	rm *.o test_timer

#purpose of the file: to compile hello
#date: 2021-07-11
#-------------------------------------------------
    
hello: hello.o
	 g++ -Wall -g -o hello hello.o && ./hello file.txt | tee output.txt

clean:
	rm -f *.o hello

valgrind: hello
	valgrind -s --leak-check=full --track-origins=yes ./hello

hello.o: hello.cpp hello.h
	g++ -c hello.cpp


#purpose of the file: to compile hello
#date: <date>
#-------------------------------------------------

hello: hello.cpp hello.h
	 g++ -Wall -g hello.cpp && ./hello | tee output.txt

clean:
	rm -f *.o hello

memory: hello
	valgrind -s --leak-check=full --track-origins=yes ./hello


#purpose of the file: to compile test
#date: 2021-07-17
#-------------------------------------------------
    
test: file1.o file2.o 
	 g++ -Wall -g -o test file1.o file2.o  && ./test  | tee output.txt

clean:
	rm -f *.o test

valgrind: test
	valgrind -s --leak-check=full --track-origins=yes ./test

c: test
	./test  | tee output.txt

#--------------------------------------------
file1.o: file1.cpp 
	g++ -c file1.cpp

file2.o: file2.cpp 
	g++ -c file2.cpp


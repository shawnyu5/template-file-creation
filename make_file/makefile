#purpose of the file: to compile hfsd
#date: 2021-07-11
#-------------------------------------------------
    
hfsd: hello.o 
	 g++ -Wall -g -o hfsd hello.o && ./hfsd | tee output.txt

clean:
	rm -f *.o hfsd

memory: hfsd
	valgrind -s --leak-check=full --track-origins=yes ./hfsd


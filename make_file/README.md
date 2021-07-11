# Make file support

This directory is used to test auto generating make file

## Pseudocode 

Script takes in the `.c` files that needs to be compiled. `.h` files will be ignored

Ask user for output name
  - Will be the name of first rule

Store all files passed in without the `.cpp` extension in an array

Loop through all elements in array to create rule

First rule:

```text
<output name>: <all files.o>
    g++ -Wall -g <all files.o> -o <output name> && ./<output name> | tee
    output.txt
```


Formate:

```
<array element>.o: <array element>.cpp <array element>.h
    g++ -c <array element>.cpp
```


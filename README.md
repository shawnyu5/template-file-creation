# template-file-creation
this program creates pre determined template files in a variety of programming languages

## installation

1. run this command to download the necessary files
```
git clone https://github.com/themagicguy/template-file-creation
```

2. have the ability to run the command globally by adding folder to path. 

```
sudo mv template-file-creation /usr/local/bin/
```

And you are ready to go!!

## usage
```
template
```
by default, when you on the template command on it's own, it will prompt the user for the language, and name of the file. and creates a file with these comments at the top, and open the file it just created in vim. 
```text
purpose of this file:

Date: <current date>

---------------------------------
```
the -c option will open a file in vs code instead of vim. 

```bash
template -c
```

will create a file that will compile c++ files through g++, and run the file.
​```bash
template -compile <c++ files>
```


```bash
template .h
```
will create a c++ style header file with header guards 

```bash
template <FILE_NAME>
```
running the command with the file name passed in will prompt the user for a lanuage, then create a file with that name and selected lanuage. 

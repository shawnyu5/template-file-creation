# template-file-creation
this program creates pre determined template files in a variety of programming languages

## installation

1. run this command to download the files necessary
```bash
git clone https://github.com/themagicguy/template-file-creation
```

3. have the ability to run the command globally by adding folder to path. 
``` bash
sudo mv template-file-creation /usr/local/bin/
```

And you are ready to go!!

## usage
```
template
```
by default, when you run the template command on it's own, it will prompt the user for the language, name of the file. And then create a file with these comments at the top, and open the file it just created in vim. 
```
purpose of this file:

Date: <current date>

---------------------------------
```

the -c option will open the file in a existing vs code window instead of vim. 
```bash
template -c
```

the -cn option will will open the file in a new vs code window
```bash
template -cn
```

will create a file that will compile c++ files through g++, and run the program.
```bash
template -compile c++_files
```

running the command with the file name passed in will then prompt the user for the format of the file and create a file with that name. 
```bash
template NEW_FILE_NAME
```

passing in **read** or **readme** as either a argument or as an language will automatically create a README.md file and disregard the name passed in. 
```bash
template read
template readme
```

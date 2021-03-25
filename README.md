# template-file-creation
this program creates pre determined template files in a varity of programming lanuages

## installation

```
git clone https://github.com/themagicguy/template-file-creation
```

1. run this command to download the files nesscessary

```
sudo mv template-file-creation /usr/local/bin/
```
2. have the ability to run the command globally by adding folder to path. 

And you are ready to go!!

## usage
```
template
```
by default, when you on the template command on it's own, it will prompt the user for the lanuage, and name of the file. and creates a file in that formate with these comments at the top and open the file it created in vim. 
```
purpose of this file:

Date: <current date>

---------------------------------
```

```
template -c
```
the -c option will open a file in vs code instead of vim. 

```
template -compile <c++ files>
```
this will create a file that will compile c++ files through g++, and run the file.

feel free to add a feature or fix a bug. I'll be happy to accept your PR!

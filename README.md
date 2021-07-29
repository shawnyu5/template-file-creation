# template-file-creation

This program creates pre determined template files based on the programming
language

## installation

1. run this command to download the files necessary
```
git clone https://github.com/themagicguy/template-file-creation
```

2. Have the ability to run the command globally by adding folder to path.

```
chmod +x template-file-creation/template
sudo cp template-file-creation/template /usr/local/bin/
```

And you are ready to go!!

## usage

```bash
template
```

By default, when you run the template command on it's own, it will prompt the
user for the language, and name of the file. And creates a file with these
comments at the top, and open the file it just created in your default editor, as well as give
the file executable permission, where applicable (bash scripts).

```
purpose of this file:

Date: <current date>
---------------------------------
```

The -c option will open a file in vs code instead of your default editor.

```bash
template -c
```

The `-compile` flag will create a file that will compile C++ files through G++

```bash
template -compile <c++ files>
```

Will create a C++ style header file with header guards

```bash
template .h
```

Running the command with the file name passed in will then prompt the user for
the format of the file and create a file with that name.

```bash
template <NEW_FILE_NAME>
```

The `-q` option will create the file and do nothing

```bash
template -q
```

The `-make` flag will auto generate a template make file with certain predefined
rules. It takes in the files to be compiled, and auto generates rules for those
files.

```bash
template -make <files>.cpp
```

**Note:** auto generating rules is not as robust as `cmake`, but this is
designed to generate a template to get started.

**Note:** This is option is designed to work with C++ files, and compiled
through g++.

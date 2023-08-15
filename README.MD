# C++ Project Template

A basic template for developing simple console based C++ programs in VSCode, this is mostly for my upcomming Data Structures class.

It contains:

- VSCode tasks.json file for building / running a project
- VSCode launch.json for debugging a project with GDB
- Git ignore for ignoring build output files
- Makefile for building projects easily

## Getting Started

Make sure you have G++, GDB, and Make installed on a linux machine or in WSL. You can install these by running

    sudo apt install build-essentials
    sudo apt install gdb
    sudo apt install make

To use this in other projects, clone this repository and open this folder in VSCode by running.

		cd into/project/directory
		git clone https://github.com/CooperW824/cpp-template.git
		code .

then select `Open Folder` in VSCode and open your project folder.

If you want to add a remote repository for holding onto your code:

		git remote add origin <your remote url here>

## Building

Build the demo program by running

		make

and then you can run the demo program by running:

		./build/app.bin


## Adding additional source files

To add additional source files to the makefile:

1. Add a new task to the make file for the new source file by adding the below code to the end of the file, replacing `filename` with the name of the source file without the file extension.

```makefile
filename.o: 
	g++ -g -c -o build/filename.o filename.cpp 
```

2. Update the dependencies for the project build step

Add your new file dependency to the first two lines of the make file as shown below. Replacing `filename` with the name of the source file without the file extension.:

```makefile
build: main.o filename.o
	g++ -g -o build/app.bin build/main.o build/filename.o
```
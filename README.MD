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

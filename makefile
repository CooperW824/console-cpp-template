build: clean main.o
	g++ -g -o build/app.bin build/main.o

clean:
	rm -rf build
	mkdir build

main.o:
	g++ -g -c -o build/main.o main.cpp 

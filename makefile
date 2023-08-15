build: main.o test.o
	g++ -g -o build/app.bin build/main.o build/test.o

clean:
	rm -rf build
	mkdir build

main.o:
	g++ -g -c -o build/main.o src/main.cpp 

test.o:
	g++ -g -c -o build/test.o src/test.cpp
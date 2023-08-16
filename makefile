build: main.o factorial.o MyClass.o
	g++ -g -o build/app.bin build/main.o build/factorial.o build/MyClass.o

clean:
	rm -rf build
	mkdir build

main.o:
	g++ -g -c -o build/main.o src/main.cpp 

factorial.o:
	g++ -g -c -o build/factorial.o src/factorial.cpp

MyClass.o:
	g++ -g -c -o build/MyClass.o src/MyClass.cpp
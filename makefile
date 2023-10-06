build: main.o factorial.o MyClass.o
	g++ -Wall -Wextra -g -o build/app.bin build/*.o

clean:
	rm -rf build
	mkdir build

main.o: src/main.cpp
	g++ -g -Wall -Wextra -c -o build/main.o src/main.cpp 

factorial.o: src/factorial.cpp
	g++ -g -Wall -Wextra -c -o build/factorial.o src/factorial.cpp

MyClass.o: src/MyClass.cpp
	g++ -g -Wall -Wextra -c -o build/MyClass.o src/MyClass.cpp
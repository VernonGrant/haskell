
run: main.hs
	ghc -o ./out/main main.hs
	./out/main

clean:
	rm -f ./*.hi
	rm -f ./*.o

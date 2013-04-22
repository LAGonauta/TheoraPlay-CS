# Makefile for TheoraPlay#
# Written by Ethan "flibitijibibo" Lee

build: clean
	mkdir bin
	cp TheoraPlay#.dll.config bin
	dmcs /unsafe -debug -out:bin/TheoraPlay#.dll -target:library TheoraPlay.cs

clean:
	rm -rf bin

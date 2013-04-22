# Makefile for TheoraPlay#
# Written by Ethan "flibitijibibo" Lee

# System information
UNAME = $(shell uname)
ARCH = $(shell uname -m)

build: clean
	mkdir bin
	cp TheoraPlay#.dll.config bin
	dmcs /unsafe -debug -out:bin/TheoraPlay#.dll -target:library TheoraPlay.cs

clean:
	rm -rf bin

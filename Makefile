# Makefile for TheoraPlay C# Wrapper
# Written by Ethan "flibitijibibo" Lee

build:
	dmcs -out:TheoraPlay.dll -target:library TheoraPlay.cs

clean:
	rm -f TheoraPlay.dll

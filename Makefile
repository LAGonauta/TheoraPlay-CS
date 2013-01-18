# Makefile for TheoraPlay C# Wrapper
# Written by Ethan "flibitijibibo" Lee

# System information
UNAME = $(shell uname)

# System define
# TODO: Note that TheoraPlay still needs a Windows port! -flibit
ifeq ($(UNAME), Darwin)
	PLATFORM = MONOMAC
else
	PLATFORM = LINUX
endif

build:
	dmcs -out:TheoraPlay.dll -target:library -define:$(PLATFORM) TheoraPlay.cs

clean:
	rm -f TheoraPlay.dll

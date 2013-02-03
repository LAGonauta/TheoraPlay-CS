# Makefile for TheoraPlay C# Wrapper
# Written by Ethan "flibitijibibo" Lee

# System information
UNAME = $(shell uname)
ARCH = $(shell uname -m)

# Target Architecture
ifeq ($(UNAME), Darwin)
	DEFINE = x86
else ifeq ($(UNAME), Linux)
	ifeq ($(ARCH), x86_64)
		DEFINE = x86_64
	else
		DEFINE = x86
	endif
else
	DEFINE = UNKN
endif

build:
	dmcs -unsafe -out:TheoraPlay.dll -target:library TheoraPlay.cs -define:$(DEFINE)

clean:
	rm -f TheoraPlay.dll

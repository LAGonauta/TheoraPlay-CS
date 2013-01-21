# TheoraPlay CMake File
# Written by Ethan "flibitijibibo" Lee
CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
PROJECT(TheoraPlay)

# Oh, to have fat binaries on Linux...
IF (CMAKE_SYSTEM_NAME STREQUAL Darwin)
	SET(CMAKE_OSX_ARCHITECTURES "i386" "x86_64")
ENDIF()

# Compiler flags
SET(CMAKE_C_FLAGS "-O2 -std=c99 -Wall -Wno-implicit-function-declaration")

# Linker flags
SET(CMAKE_SHARED_LINKER_FLAGS "-Wl,--no-undefined")

# Include our own API...
include_directories(include)

# Target
ADD_LIBRARY(theoraplay SHARED src/theoraplay.c)
TARGET_LINK_LIBRARIES(theoraplay ogg)
TARGET_LINK_LIBRARIES(theoraplay vorbis)
TARGET_LINK_LIBRARIES(theoraplay theora)
TARGET_LINK_LIBRARIES(theoraplay theoradec)
TARGET_LINK_LIBRARIES(theoraplay pthread)

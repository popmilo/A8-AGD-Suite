# A8-AGD-Suite
AGD suite for converting, compiling and running AGD games on 8 bit Atari computers

Usage A8-AGD Suite with CMD window:
- Open CMD Window
- Type CD "SUITE VIC20"
- Type BUILD TEST to compile \AGDSOURCE\TEST.AGD


MinGW sources:
- I use MinGW C-compiler to compile file

CC65:
- GAME.ASM is start assembly
- VIC20.CFG is configuration file CC65 -  need to change this to A8
- LIB.INC is library with specific VIC20 routines
- \AGD\ENGINE.INC is MPAGD engine

I inserted an endless loop just after the mloop label for testing in the engine.
This code is relocated if I want to test a part of the code.
Screenbuilding is working now.

A8 memory:
- $0400-$06ff   = MAP with tile properties
- $0700-$0717   = Screen Line offset table low-byte
- $0718-$072f   = Screen Line offset table low-byte
- $1000-$1240   = Screen
- $1800-$1aff   = Font storage (char 0-95)
- $1b00-?????   = Tiles copied from MPAGD (96-xx)
- $2000-?????   = Gamecode
- $9400-$97ff   = To be used for tile colours
@echo off

rem Build asm file
 echo Building: %1
 echo .include "%1.inc" >game.inc

rem Conditional assemble game
 echo Assemble: AGDgame.xex
 ca65 -l game.lst -o %1.o game.asm  
 if not "%errorlevel%" == "0" goto failed

rem Linking
 echo Linking: %1
 ld65  %1.o -C atari-asm.cfg -o %1.xex
 if not "%errorlevel%" == "0" goto failed

rem Copying
 echo Copying: %1
 copy %1.xex "..\Altirra\games" > nul
 echo Finished, created %1.xex
 echo.
 goto end

:failed
echo.
echo Error %errorlevel%
 echo.
 echo Usage: build [agd file] 
 echo.


:end
del *.o



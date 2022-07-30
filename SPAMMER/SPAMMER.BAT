@echo off
set /A time=1
if exist FILES (goto :skipfolder) else (mkdir FILES)
:skipfolder
title FILE SPAMMER
echo.
echo [i] FILENAME
set /p "name=[:] "
echo.
echo [i] AMOUNT
set /p "times=[:] "
cls
set /A times2=%times% + 1
:loop
if %time% EQU %times2% (goto :finish)
copy TCOF.TGF FILES\%name%-%time%
echo [i] [%time% / %times%] %name%-%time%
set /A time=%time% + 1
goto :loop
:finish
cls
echo.
echo [i] MADE [%times%] FILES
echo.
echo [i] PRESS ANY KEY TO EXIT
pause>nul
@echo off
set /A time=0
title FILE SPAMMER
echo.
echo [i] DATEINAME
set /p "name=[:] "
cls
echo.
echo [i] ANZAHL
set /p "times=[:] "
cls
:loop
if %time% EQU %times% (goto :finish)
copy TCOF.TGF FILES\%name%-%time%
echo [i] [%time% / %times%] %name%-%time%
set /A time=%time% + 1
goto :loop
:finish
cls
echo.
echo [i] MADE [%times%] FILES
echo.
echo [i] TASTE ZUM BEENDEN DRÜCKEN
pause>nul
exit 0
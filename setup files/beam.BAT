 
@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter 
REM BFCPEEXE=
REM BFCPEICON=
REM BFCPEICONINDEX=-1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=0
REM BFCPEVERVERSION=1.0.0.0
REM BFCPEVERPRODUCT=samfisherirl
REM BFCPEVERDESC=samfisherirl
REM BFCPEVERCOMPANY=samfisherirl
REM BFCPEVERCOPYRIGHT=samfisherirl
REM BFCPEOPTIONEND
@ECHO ON
 

ECHO.
CLS
ECHO.
ECHO.

CLS
set /p mytextfile=< logfile.txt
echo %mytextfile% 

CLS
Start ""  "%localappdata%\BeamNG.drive\0.24\settings\FAR.ps1" 

ECHO.
ECHO. Applying fullscreen
ECHO.

Timeout /t 1
CLS 
Start "" "%localappdata%\BeamNG.drive\0.24\settings\gui.exe"
ECHO.
Start "" "%mytextfile%"
CLS 
CLS 
ECHO.Loading BeamNG.Drive, Drive safe....
Timeout /t 5
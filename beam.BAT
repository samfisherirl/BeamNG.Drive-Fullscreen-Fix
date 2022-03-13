 
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
  
CLS
set /p mytextfile=< logfile.txt
@ECHO OFF
Start "" "%localappdata%\BeamNG.drive\0.24\settings\autodetect for beamng.drive.exe"
Timeout /t 1
CLS   
Start "" "%mytextfile%"
CLS  
Timeout /t 5
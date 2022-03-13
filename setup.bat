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

@ECHO OFF

xcopy /y /s /i /q "./setup files" "%localappdata%\BeamNG.drive\0.24\settings"  

CLS
timeout /t 1 
CLS



xcopy /y /s /i /q "./setup files/Desktop Icon" "%userprofile%\desktop"  

CLS

Echo:.
timeout /t 1 
CLS
Echo:.
Echo:.Loading files to run at game startup...
Echo:.

exit
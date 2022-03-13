﻿; Generated by Auto-GUI 3.0.1
Application := "BeamNG.drive "
Gui Font, s9, Segoe UI
Gui Add, Button, x280 y58 w80 h23 , Exit
Gui Add, Button, x24 y58 w80 h23 gInstall, Install
Gui Add, Button, x136 y58 w112 h23 gFSN, Go Fullscreen Now
Gui Add, Text, x16 y8 w357 h50, Install will provide a desktop icon that can replace`nyour game shortcut. You can also import the exe to Steam. 
Gui Show, w384 h110, BMNG Fullscreen Fix
;WinSet, AlwaysOnTop,, BMNG Fullscreen Fix,
Return


;FileSelectFolder, OutputVar, , 3
;if OutputVar =
;    MsgBox, You didn't select a folder.
;else
;    MsgBox, You selected folder "%OutputVar%".


Install:
{	
	SetWorkingDir %A_ScriptDir%
	gameusualdir := "C:\Program Files (x86)\Steam\steamapps\common\BeamNG.drive\BeamNG.drive.exe"
	MsgBox, Please locate the game exe for Beamng.Drive 
	FileSelectFile, FullGameDirectory, , %gameusualdir%, Select a game, application (*.exe)
	if (FullGameDirectory = "")
		MsgBox, I haven't received a file value.
;        else
;        {
;            SplitPath, FullGameDirectory, Gamewithextension, gamefolder, Gameextenstion, Gamenameonly,
;        }
	Firsthalf := "\BeamNG.drive\0.24\settings\logfile.txt"
	loglocal := LocalAppData Firsthalf
  ; write game location to local app data and settings  
	FileDelete, %loglocal%
	FileAppend, %FullGameDirectory%, %loglocal%
	run, setup.bat
	Sleep, 3000
	MsgBox, Once the Command Terminal closes, you have installed and should have a new desktop icon. You can now import the desktop icon as a non-steam game to your steam library. 
}
return

Exit:
{
    ExitApp
}
return





FSN:
{
   ControlFocus,, %Application%
    Sleep, 500
    ControlSend,, {RAlt Down}{Enter}{RAlt Up}, %Application%
}
return

~End::
ControlFocus,, %Application%
Sleep, 500
ControlSend,, {Alt Down}{Enter}{Alt Up}, %Application%
return

Pause::ExitApp

 
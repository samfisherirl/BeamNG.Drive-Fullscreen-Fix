#SingleInstance, force 
    SetTitleMatchMode, 2

wExe := "BeamNG.drive.x64.exe"

Maximize(IDs){
    Loop %IDs%
    {
        Screen_X = %A_ScreenWidth%
        Screen_Y = %A_ScreenHeight%
        ID := IDs%A_Index%
        If ID not in %Old_IDs%
        {
            WinActivate ahk_id %ID%
            WinSet, Style, -0xC40000, A
            WinMove, A, , 0, 0, Screen_X, Screen_Y
            ;WinActivate, A
        }
        New_IDs .= ID ","
    }
    StringTrimRight Old_IDs, New_IDs, 1         
    New_IDs =
} 
;Sleep, 1000
;WinGet IDs, List, ahk_exe BeamNG.drive.x64.exe

;Maximize(IDs)

;function that brings game borderless when not in focus
;not called unless loop below it activates and user alt tabs
;if beamng exists, loop check for windowed mode. Change to borderless until active
WinGet, App, ProcessName, BeamNG 
WinGetTitle, title, BeamNG     
WinGet, isMaxed, MinMax, BeamNG
VarWin := "14CF"  ; ///////////////////////use Forzen AUtOit window info to get style token
VarBord := "140B" ; //////////////////////use Forzen AUtOit window info to get style token
VarBord2 := "x940"
VarFull := "1400"
WinGet IDs, List, ahk_exe %App%
Maximize(IDs) 

Loop
{     
    ; Msgbox, Winactive. 2 seconds to focus beamng
    Sleep, 1000        
    WinGet, OutputVar, Style, BeamNG   
    IfNotInString, OutputVar, %VarFull%
    {
        If WinActive("BeamNG") 
        {
            Sleep, 500
            ;Msgbox, identified as in focus, making full screen
            ControlFocus,, BeamNG
            ControlSend,, {RAlt Down}{Enter}{RAlt Up}, BeamNG
            Sleep, 3000 
        }
    }
    
    ;    IfInString, OutputVar, %VarWin% 
    ;    {
    ; Goto, success2  ////////////////////// this is optional bordless force
    
    ;    IfNotInString, OutputVar, %VarBord%, %VarBord2%
    ;    {
    ;            If not WinActive("BeamNG") 
    ;           {
    ;               Sleep, 300 
    ;               Counter := 1
    ;               WinGetActiveTitle, Currentapp
    ;               ;msgbox, not active, making borderless
    ;               sleep, 500
    ;               WinGet IDs, List, ahk_exe %App%
    ;              Maximize(IDs) 
    ;              Sleep, 400
    ;              WinActivate, %Currentapp%
    ;              Sleep, 3000
    ;          }
}
;}
;}

return

~F12::Suspend
return

~Pause::
    Suspend,Off
    ExitApp
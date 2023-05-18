#SingleInstance Force
SendMode Input
detectHiddenWindows, on
SetTitleMatchMode, 2


Gui, Add, Button, w100 h30 gStartButton, Start
Gui, Add, Button, w100 h30 gStopButton, Stop
Gui, Add, Edit, x10 y170 w100 vTimeInput, 3 600 000
Gui, Add, Button, x10 y200 w100 h30 gSetTimerButton, AutoDisable
Gui, Show, w400 h250, AbrissyMacro - Netherwart
Gui, Color, a8325e ; set background color to white
gui, add, Picture, x0 y0 h250 w400, siema.png



return

StartButton:
    MyNumber := 1
    WinGet, programid, List, Minecraft
    Loop, % programid
    {
        ControlSend,, {a down}{l down}, % "ahk_id " programid%A_index%
    }
return

StopButton:
    MyNumber := 1
    WinGet, programid, List, Minecraft
    Loop, % programid
    {
        ControlSend,, {a UP}{l up}, % "ahk_id " programid%A_index%
    }
return

SetTimerButton:
    Gui, Submit, NoHide
    SetTimer, CallF2, %TimeInput%
return

CallF2:
    SetTimer, CallF2, off
    MsgBox, Start kodu F2
return

GuiClose:
    ExitApp

F1::
    MsgBox, Start kodu F1
return

F2::
    MsgBox, Start kodu F2
return

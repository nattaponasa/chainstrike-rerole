#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode, Mouse, client
CoordMode, Pixel, client
CoordMode, Tooltip, client

esc::
    MsgBox, Stop Ai
Return

^!s::
    ControlClick, x234 y126, NoxPlayer1
    ; while 1
    ; {
    ;     PixelGetColor, color, 514, 920 
    ;     IfEqual, color, 0x1E1E1E 
    ;     {
    ;         ControlClick, x300 y400, Untitled - Paint
    ;         return
    ;     }
    ;     Else
    ;     {
    ;         MsgBox, %color%
    ;         return
    ;     }
            
    ; }

Return

^!c::  ; Control+Alt+Z hotkey.
    

    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%
    MsgBox The color at %MouseX%, %MouseY% is %color%.
return

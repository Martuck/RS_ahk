#MaxThreadsPerHotkey 2

SetKeyDelay,1,25

F10::ExitApp ; Win+x kills the current script running completely.
Pause::Pause, toggle ; Pauses script except when currently executing a line.
F9:: ; Script start
while (GetKeyState("F9", "p"))

IfWinExist, RuneScape ;insert the window name
WinActivate

Gui, +AlwaysOnTop
Gui, -Border
Gui, Color, Navy
Gui, Font, s10, MS Sans Serif
Gui, Show, x0 y0 w40 h30, Progress
Gui, Add, Text, w100 cLime vStatus
WinSet, Transparent, 250, Progress

MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%

loop, 86400000 {
Guicontrol,, Status, % A_Index
loop, 10 {
Random, ransleep, 8000, 25500
PixelSearch, Px, Py, 544, 1400, 1830, -493, %color%, 0, Fast ; oxoooo4c is the pixel color fould from using the first script, insert yours there
click %Px%, %Py%
sleep, %ransleep%
}
loop, 1 {
Random, rando, 15000, 20000
sleep, %rando%
}
}	
return

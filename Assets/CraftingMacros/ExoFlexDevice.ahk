#Requires AutoHotkey v2.0
#SingleInstance Force

WinActivate("Roblox")
MouseMove(1000, 334)
MouseMove(1000, 333)
MouseClick("left")
Sleep(300)
MouseMove(1072, 550)
MouseMove(1070, 555)
Sleep(200)
loop 30
{
    Send("{WheelDown}")
    Sleep(50)
}
loop 2
{
    Send("{WheelUp}")
    Sleep(50)
}
Sleep(200)
MouseClick("left")
Sleep(300)

x := 1418
y := 481

color := PixelGetColor(x, y, "RGB")

targetColor := 0x49DB00

if (color = targetColor) {
} else {
    MouseMove(705, 567)
    MouseMove(705, 570)
    MouseClick("left")
}

MouseMove(709, 647)
MouseMove(710, 647)

loop 30
{
    Send("{WheelUp}")
    Sleep(50)
}

x := 714
y := 647

color := PixelGetColor(x, y, "RGB")

targetColor := 0x49DB00

if (color = targetColor) {
} else {
    MsgBox("Arcane not finished checking if device is already Crafted.")
    Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' A_ScriptDir '\CheckForDevice.ahk"')
}
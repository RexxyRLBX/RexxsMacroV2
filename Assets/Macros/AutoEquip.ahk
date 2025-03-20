#Requires AutoHotkey v2.0
#SingleInstance force


WinActivate("Roblox")
Sleep(333)

ScriptDir := A_ScriptDir
IniDir := ScriptDir "\..\..\"

AuraEquip := IniRead(IniDir "Settings.ini", "Settings", "AuraEquip", "NF")

if AuraEquip = "1" {
    WhatEquip := IniRead(IniDir "Settings.ini", "Settings", "WhatEquip", "NF")

    Sleep(333)
    MouseMove(40, 400)
    Sleep(100)
    MouseMove(40, 390)
    Sleep(100)
    MouseClick("Left")
    Sleep(700)
    MouseMove(950, 370)
    MouseMove(940, 370)
    Sleep(500)
    MouseClick("Left")
    Sleep(700)
    Send(WhatEquip)
    Sleep(100)
    MouseMove(825 ,450)
    MouseMove(830, 450)
    Loop 10 {
        Send("{WheelUp}")
        Sleep(10)
   }
    Sleep(400)
    MouseClick("Left")
    Sleep(400)
    MouseMove(600, 640)

x := 600
y := 640

color := PixelGetColor(x, y, "RGB")

targetColor := 0x7BFA6F

if (color = targetColor) {
    MouseMove(590, 640)
    MouseClick("Left")
    Sleep(1000)
    MouseMove(1420, 300)
    MouseMove(1430, 300)
    MouseClick("Left")
    Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' A_ScriptDir '\CameraAllign.ahk"')
    Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\MacroStop.ahk"')
    ExitApp()
} else {
    MouseMove(1420, 300)
    MouseMove(1430, 300)
    MouseClick("Left")
    Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' A_ScriptDir '\CameraAllign.ahk"')
    Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\MacroStop.ahk"')
    ExitApp()
}


} else {
    Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\CameraAllign.ahk"')
    Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\MacroStop.ahk"')
    ExitApp()
}

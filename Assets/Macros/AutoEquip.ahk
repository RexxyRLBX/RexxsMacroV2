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
    MouseMove(53, 533)
    Sleep(100)
    MouseMove(53, 520)
    Sleep(100)
    MouseClick("Left")
    Sleep(700)
    MouseMove(1266, 493)
    MouseMove(1253, 493)
    Sleep(500)
    MouseClick("Left")
    Sleep(700)
    Send(WhatEquip)
    Sleep(100)
    MouseMove(1100, 600)
    MouseMove(1106, 600)
    Loop 10 {
        Send("{WheelUp}")
        Sleep(10)
    }
    Sleep(400)
    MouseClick("Left")
    Sleep(400)
    MouseMove(800, 853)

    x := 800
    y := 853

    color := PixelGetColor(x, y, "RGB")

    targetColor := 0x7BFA6F

    if (color = targetColor) {
        MouseMove(786, 853)
        MouseClick("Left")
        Sleep(1000)
        MouseMove(1893, 400)
        MouseMove(1906, 400)
        MouseClick("Left")
        Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' A_ScriptDir '\CameraAllign.ahk"')
        Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\MacroStop.ahk"')
        ExitApp()
    } else {
        MouseMove(1893, 400)
        MouseMove(1906, 400)
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

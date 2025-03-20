#Requires AutoHotkey v2.0
#SingleInstance Force
WinActivate("Roblox")

ScriptDir := A_ScriptDir
IniDir := ScriptDir "\..\..\"

Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\ItemPath1.ahk"')
Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\MacroStop.ahk"')

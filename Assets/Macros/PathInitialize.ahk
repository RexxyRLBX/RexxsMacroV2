#Requires AutoHotkey v2.0
#SingleInstance Force
WinActivate("Roblox")

ScriptDir := A_ScriptDir
IniDir := ScriptDir "\..\..\"

ini_NextPath := IniRead(IniDir "\Settings.ini", "Settings", "NextPath", 1)
NextPath := ini_NextPath

ini_JakeCooldownOver := IniRead(IniDir "\Settings.ini", "Settings", "JakeCooldownOver", 0)
JakeCooldownOver := ini_JakeCooldownOver

if (JakeCooldownOver = 0) {
    
    if (NextPath = 1) {
    
        Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\ItemPath1.ahk"')
    
        ExitApp()
    
    }

} else if	(JakeCooldownOver = 1) {
    MsgBox ("Jake Cooldown is Over NextPath is: JakeWalk")
    Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\JakeWalk.ahk"')
    ExitApp()
}

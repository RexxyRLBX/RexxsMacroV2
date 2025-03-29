#Requires AutoHotkey v2.0
#SingleInstance Force
WinActivate("Roblox")

ScriptDir := A_ScriptDir
IniDir := ScriptDir "\..\..\"

ini_DeviceList := IniRead(IniDir "Settings.ini", "Settings", "DeviceList", "NF")
DeviceList := ini_DeviceList
JakeCooldownOver := 0

MsgBox("Checking for device")
MouseMove(1410, 295)
MouseMove(1412, 295)
MouseClick("left")
Sleep(300)
MouseMove(41, 534)
MouseMove(46, 535)
MouseClick("left")
Sleep(300)
MouseMove(933, 335)
MouseMove(930, 335)
MouseClick("left")
Sleep(300)
MouseMove(920, 337)
MouseMove(920, 335)
MouseClick("left")
MouseMove(899, 369)
MouseMove(900, 370)
Sleep(300)
MouseClick("left")
MouseClick("left")
Sleep(1000)

if (DeviceList = "2") { ; ExoFlexDevice
    Send("{E}")
    Send("{x}")
    Send("{o}")
    Send("{f}")
    Send("{l}")
    Send("{e}")
    Send("{x}")

    x := 881
    y := 399

    color := PixelGetColor(x, y, "RGB")

    targetColor := 0xFFFFFF 

    if (color = targetColor) {
        IniWrite(JakeCooldownOver, IniDir "Settings.ini", "Settings", "JakeCooldownOver")
        Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\PathInitialize.ahk"')
    } else {
        Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\PathInitialize.ahk"')
        Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\JakeCooldown.ahk"')
    }
} else {
    ; Next Device

    if (DeviceList = "3") { ; Hologrammer
        Send("{H}")
        Send("{o}")
        Send("{l}")
        Send("{o}")
        Send("{g}")
        Send("{r}")
        Send("{a}")
    
        x := 881
        y := 399
    
        color := PixelGetColor(x, y, "RGB")
    
        targetColor := 0xFFFFFF 
    
        if (color = targetColor) {
            IniWrite(JakeCooldownOver, IniDir "Settings.ini", "Settings", "JakeCooldownOver")
            Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\PathInitialize.ahk"')
        } else {
            Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\PathInitialize.ahk"')
            Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\JakeCooldown.ahk"')
        }
    } else {
        ; Next Device

        if (DeviceList = "4") { ; Raganröker
            Send("{R}")
            Send("{a}")
            Send("{g}")
            Send("{n}")
            Send("{a}")
        
            x := 881
            y := 399
        
            color := PixelGetColor(x, y, "RGB")
        
            targetColor := 0xFFFFFF 
        
            if (color = targetColor) {
                IniWrite(JakeCooldownOver, IniDir "Settings.ini", "Settings", "JakeCooldownOver")
                Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\PathInitialize.ahk"')
            } else {
                Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\PathInitialize.ahk"')
                Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\JakeCooldown.ahk"')
            }
        } else {
            ; Next Device

            if (DeviceList = "5") { ; Starshaper
                Send("{s}")
                Send("{t}")
                Send("{a}")
                Send("{r}")
                Send("{s}")
                Send("{h}")
                Send("{a}")
            
                x := 881
                y := 399
            
                color := PixelGetColor(x, y, "RGB")
            
                targetColor := 0xFFFFFF 
            
                if (color = targetColor) {
                    IniWrite(JakeCooldownOver, IniDir "Settings.ini", "Settings", "JakeCooldownOver")
                    Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\PathInitialize.ahk"')
                } else {
                    Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\PathInitialize.ahk"')
                    Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\JakeCooldown.ahk"')
                }
            } else {
                ; Next Device

                if (DeviceList = "6") { ; FleshDevice
                    Send("{F}")
                    Send("{l}")
                    Send("{e}")
                    Send("{s}")
                    Send("{h}")
                
                    x := 881
                    y := 399
                
                    color := PixelGetColor(x, y, "RGB")
                
                    targetColor := 0xFFFFFF 
                
                    if (color = targetColor) {
                        IniWrite(JakeCooldownOver, IniDir "Settings.ini", "Settings", "JakeCooldownOver")
                        Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\PathInitialize.ahk"')
                    } else {
                        Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\PathInitialize.ahk"')
                        Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\JakeCooldown.ahk"')
                    }
                } else {
                    ; Next Device

                    if (DeviceList = "2") { ; ExoFlexDevice
                        Send("{E}")
                        Send("{x}")
                        Send("{o}")
                        Send("{f}")
                        Send("{l}")
                        Send("{e}")
                        Send("{x}")
                    
                        x := 881
                        y := 399
                    
                        color := PixelGetColor(x, y, "RGB")
                    
                        targetColor := 0xFFFFFF 
                    
                        if (color = targetColor) {
                            IniWrite(JakeCooldownOver, IniDir "Settings.ini", "Settings", "JakeCooldownOver")
                            ExitApp()
                            Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\PathInitialize.ahk"')
                        } else {
                            ExitApp()
                            Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\PathInitialize.ahk"')
                            Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' IniDir '\Assets\Macros\JakeCooldown.ahk"')
                        }
                    } else {
                        ; Next Device
                    }
                }
            }
        }
    }
}
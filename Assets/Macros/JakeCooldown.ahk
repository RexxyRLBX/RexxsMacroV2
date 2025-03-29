#Requires AutoHotkey v2.0
#SingleInstance force

ScriptDir := A_ScriptDir
IniDir := ScriptDir "\..\.."

global JakeCooldown := 0
global JakeCooldownOver := 1
global ini_JakeCooldown := 0
global ini_JakeCooldownOver := 1

; Read values from INI
ini_JakeCooldown := IniRead(IniDir "\Settings.ini", "Settings", "JakeCooldown", 120)
ini_JakeCooldownOver := IniRead(IniDir "\Settings.ini", "Settings", "JakeCooldownOver", 1)

JakeCooldown := ini_JakeCooldown
JakeCooldownOver := ini_JakeCooldownOver

; Set timer to run every 6 seconds (6000 ms) for debugging purposes
SetTimer(UpdateCooldown, 6000)

UpdateCooldown() {
    global JakeCooldown, JakeCooldownOver, ini_JakeCooldown, IniDir

    ; Decrease cooldown if it's still running
    if (JakeCooldown > 0) {
        JakeCooldown -= 1
        JakeCooldownOver := 0
        
        IniWrite(JakeCooldown, IniDir "\Settings.ini", "Settings", "JakeCooldown")
        IniWrite(JakeCooldownOver, IniDir "\Settings.ini", "Settings", "JakeCooldownOver")

        ToolTip("JakeCooldown: " JakeCooldown "`nJakeCooldownOver: " JakeCooldownOver)
    }
    
    ; Cooldown reached zero
    if (JakeCooldown <= 0) {
        JakeCooldownOver := 1
        
        IniWrite(JakeCooldownOver, IniDir "\Settings.ini", "Settings", "JakeCooldownOver")
        
        ; Stop the timer since the cooldown is over
        SetTimer(UpdateCooldown, 0) ; Stop the timer

        ToolTip("Cooldown is over! JakeCooldownOver: " JakeCooldownOver)
    }
}

; Function to restart cooldown manually
StartJakeCooldown() {
    global JakeCooldown, JakeCooldownOver, ini_JakeCooldown, IniDir

    JakeCooldown := ini_JakeCooldown
    JakeCooldownOver := 0
    
    IniWrite(JakeCooldown, IniDir "\Settings.ini", "Settings", "JakeCooldown")
    IniWrite(JakeCooldownOver, IniDir "\Settings.ini", "Settings", "JakeCooldownOver")

    ; Restart the timer at 6-second intervals for debugging
    SetTimer(UpdateCooldown, 6000)

    ToolTip("Cooldown restarted! JakeCooldown: " JakeCooldown "`nJakeCooldownOver: " JakeCooldownOver)
}

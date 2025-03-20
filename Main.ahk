#Requires Autohotkey v2
#SingleInstance force

Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' A_ScriptDir '\Assets\Macros\MacroStop.ahk"')

if A_LineFile = A_ScriptFullPath && !A_IsCompiled
{
	myGui := Constructor()
	myGui.Show("w300 h285")
}

Constructor()
{	
	myGui := Gui()
	myGui.SetFont("s11 Italic", "Segoe UI")
	Tab := myGui.Add("Tab3", "x8 y8 w290 h268", ["Main", "Controls",])
	
	Tab.UseTab(1)
	myGui.SetFont("s9 Bold", "Microsoft Sans Serif")
	myGui.Add("GroupBox", "x16 y176 w135 h93", "Points of Interest")
	myGui.SetFont("s9 Norm", "Microsoft Sans Serif")
	ItemEnable := myGui.Add("CheckBox", "x24 y192 w90 h23", "Collect Items")
	myGui.SetFont("s9 Bold", "Segoe UI")
	myGui.Add("GroupBox", "x24 y216 w120 h45", "Available Paths")
    ItemPath1 := myGui.Add("CheckBox", "x40 y232 w100 h23", "Item Path 1")
	myGui.SetFont("s9 Bold", "Segoe UI")
	myGui.SetFont("s9 Bold", "Segoe UI")
	myGui.Add("GroupBox", "x20 y48 w226 h114", "Auto Equip Aura")
	myGui.SetFont("s9 Norm", "Microsoft Sans Serif")
	AuraEquip := myGui.Add("CheckBox", "x40 y72 w120 h23", "Enable Auto Equip")
	WhatEquip := myGui.Add("Edit", "x40 y128 w120 h21")
	myGui.SetFont("s9 Norm", "Microsoft Sans Serif")
	myGui.Add("Text", "x40 y104 w124 h23 +0x200", "Insert Aura Name here")
	myGui.Add("Picture", "x184 y68 w49 h80", A_ScriptDir . "\Assets\Images\OhNo.png")
	
	Tab.UseTab(2)
	ButtonF1Start := myGui.Add("Button", "x56 y240 w80 h23", "(F1) Start")
	ButtonF2Stop := myGui.Add("Button", "x152 y240 w80 h23", "(F2) Stop")
	myGui.SetFont("s11 Bold Italic Underline", "Consolas")
	myGui.Add("Text", "x40 y208 w210 h23 +0x200", "Thanks for Using my Macro!")
	myGui.Add("Text", "x11 y184 w265 h2 +0x10")

	ini_ItemEnable := IniRead(A_ScriptDir "\Settings.ini", "Settings", "ItemEnable", )
	ItemEnable.Value := ini_ItemEnable
	
	ini_AuraEquip := IniRead(A_ScriptDir "\Settings.ini", "Settings", "AuraEquip", )
	AuraEquip.Value := ini_AuraEquip
	
	ini_WhatEquip := IniRead(A_ScriptDir "\Settings.ini", "Settings", "WhatEquip", )
	WhatEquip.Value := ini_WhatEquip

    ItemEnable.OnEvent("Click", OnEventHandler)
	
	ItemPath1.OnEvent("Click", OnEventHandler)
	
	AuraEquip.OnEvent("Click", OnEventHandler)
	
	WhatEquip.OnEvent("Change", OnEventHandler)
    
	ButtonF1Start.OnEvent("Click", OnClickHandler)
	
	ButtonF2Stop.OnEvent("Click", OnEventHandler)
	
	myGui.OnEvent('Close', (*) => ExitApp())

	myGui.Title := "RexxsMacro V0.1 (BETA)"
	
	OnEventHandler(*)
	{

		IniWrite(ItemEnable.Value, A_ScriptDir "\Settings.ini", "Settings", "ItemEnable")

		IniWrite(ItemPath1.Value, A_ScriptDir "\Settings.ini", "Settings", "ItemPath1")

		IniWrite(AuraEquip.Value, A_ScriptDir "\Settings.ini", "Settings", "AuraEquip")
		
		IniWrite(WhatEquip.Value, A_ScriptDir "\Settings.ini", "Settings", "WhatEquip")
	}

	OnClickHandler(*)
	{
		Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' A_ScriptDir '\Assets\Macros\AutoEquip.ahk"')
	}
	
	return myGui
}

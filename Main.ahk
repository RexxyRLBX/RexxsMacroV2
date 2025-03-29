#Requires Autohotkey v2
#SingleInstance force

if A_LineFile = A_ScriptFullPath && !A_IsCompiled
{
	myGui := Constructor()
	myGui.Show("w479 h285")
}

Constructor()
{	
	myGui := Gui()
	myGui.SetFont("s11 Italic", "Segoe UI")
	Tab := myGui.Add("Tab3", "x8 y8 w457 h268", ["Main", "Crafting", "Controls", "Credits"])
	
	Tab.UseTab(1)
	myGui.SetFont("s9 Bold", "Microsoft Sans Serif")
	myGui.Add("GroupBox", "x16 y176 w440 h93", "Points of Interest")
	myGui.SetFont("s9 Norm", "Microsoft Sans Serif")
	ItemEnable := myGui.Add("CheckBox", "x24 y192 w90 h23", "Collect Items")
	myGui.SetFont("s9 Bold", "Segoe UI")
	myGui.Add("GroupBox", "x24 y216 w418 h45", "Available Paths")
    ItemPath1 := myGui.Add("CheckBox", "x40 y232 w100 h23", "Item Path 1")
	myGui.SetFont("s9 Bold", "Segoe UI")
	myGui.SetFont("s9 Norm", "Verdana")
	myGui.SetFont("s9 Bold", "Segoe UI")
	myGui.Add("GroupBox", "x224 y48 w226 h114", "Auto Equip Aura")
	myGui.SetFont("s9 Norm", "Microsoft Sans Serif")
	AuraEquip := myGui.Add("CheckBox", "x240 y72 w120 h23", "Enable Auto Equip")
	WhatEquip := myGui.Add("Edit", "x240 y128 w120 h21")
	myGui.SetFont("s9 Norm", "Microsoft Sans Serif")
	myGui.Add("Text", "x240 y104 w124 h23 +0x200", "Insert Aura Name here")
	myGui.Add("Picture", "x384 y64 w49 h80", A_ScriptDir . "\Assets\Images\OhNo.png")
	
	Tab.UseTab(2)
	myGui.SetFont("s9 Bold", "Segoe UI")
	myGui.Add("GroupBox", "x16 y40 w438 h228", "Gauntlet Crafting")
	myGui.SetFont("s9 Bold", "Segoe UI")
	myGui.Add("GroupBox", "x24 y192 w181 h64", "Interval")
	myGui.SetFont("s9 Bold", "Segoe UI")
	myGui.Add("GroupBox", "x24 y88 w181 h96", "Crafting Options")
	myGui.SetFont("s9 Norm", "Microsoft Sans Serif")
	AutoCraftGauntlet := myGui.Add("CheckBox", "x32 y56 w120 h23", "Auto Craft Gauntlet")
	myGui.SetFont(, "Microsoft Sans Serif")
	DeviceList := myGui.Add("DropDownList", "x48 y112 w120", ["None", "Exoflex Device", "Hologrammer", "Ragnaröker", "Starshaper", "-Left Hand-",  "Flesh Device", "Darkshader"])
	JakeCooldown := myGui.Add("Edit", "x104 y224 w39 h21")
	myGui.SetFont("s10 Norm", "Microsoft Sans Serif")
	myGui.Add("Text", "x32 y224 w70 h23 +0x200", "Craft every")
	myGui.SetFont("s10 Norm", "Microsoft Sans Serif")
	myGui.Add("Text", "x144 y224 w49 h23 +0x200", "Minutes")
	myGui.SetFont("s9 Bold", "Segoe UI")
	myGui.SetFont("s9 Norm", "Microsoft Sans Serif")
	myGui.SetFont("s10 Norm", "Microsoft Sans Serif")
	myGui.SetFont("s9", "Microsoft Sans Serif")
	WhenDoneEquip := myGui.Add("CheckBox", "x40 y152 w150 h23", "Equip After (can Break)")
	myGui.SetFont("s9", "Microsoft Sans Serif")
	
	Tab.UseTab(3)
	myGui.SetFont("s9 Bold", "Segoe UI")
	myGui.SetFont("s11 Norm", "Microsoft Sans Serif")
	myGui.Add("Picture", "x280 y48 w171 h213", A_ScriptDir . "\Assets\Images\UndeadJumpscare.png")
	ButtonF1Start := myGui.Add("Button", "x56 y240 w80 h23", "(F1) Start")
	ButtonF2Stop := myGui.Add("Button", "x152 y240 w80 h23", "(F2) Stop")
	myGui.SetFont("s11 Bold Italic Underline", "Consolas")
	myGui.Add("Text", "x40 y208 w210 h23 +0x200", "Thanks for Using my Macro!")
	myGui.Add("Text", "x11 y184 w265 h2 +0x10")
	
	Tab.UseTab(4)
	myGui.SetFont("s10 Bold", "Segoe UI")
	myGui.Add("Text", "x20 y40 w400 h23 +0x200", "These are the People that Helped me build this Macro!")
	myGui.Add("Picture", "x20 y70 w160 h40", A_ScriptDir . "\Assets\Images\1440ptester.png")
	myGui.SetFont("s9", "Microsoft Sans Serif")
	myGui.Add("Text", "x20 y110 w200 h23 +0x200", "Helps with 1440p Testing!")
	Tab.UseTab()

	ini_ItemEnable := IniRead(A_ScriptDir "\Settings.ini", "Settings", "ItemEnable", )
	ItemEnable.Value := ini_ItemEnable

	ini_ItemPath1 := IniRead(A_ScriptDir "\Settings.ini", "Settings", "ItemPath1", )
	ItemPath1.Value := ini_ItemPath1
	
	ini_AuraEquip := IniRead(A_ScriptDir "\Settings.ini", "Settings", "AuraEquip", )
	AuraEquip.Value := ini_AuraEquip
	
	ini_WhatEquip := IniRead(A_ScriptDir "\Settings.ini", "Settings", "WhatEquip", )
	WhatEquip.Value := ini_WhatEquip
	
	ini_AutoCraftGauntlet := IniRead(A_ScriptDir "\Settings.ini", "Settings", "AutoCraftGauntlet", )
	AutoCraftGauntlet.Value := ini_AutoCraftGauntlet
	
	ini_JakeCooldown := IniRead(A_ScriptDir "\Settings.ini", "Settings", "JakeCooldown", )
	JakeCooldown.Value := ini_JakeCooldown
	
	ini_WhenDoneEquip := IniRead(A_ScriptDir "\Settings.ini", "Settings", "WhenDoneEquip", )
	WhenDoneEquip.Value := ini_WhenDoneEquip

	ini_DeviceList := IniRead(A_ScriptDir "\Settings.ini", "Settings", "DeviceList", )
	DeviceList.Value := ini_DeviceList

    ItemEnable.OnEvent("Click", OnEventHandler)
	
	ItemPath1.OnEvent("Click", OnEventHandler)
	
	AuraEquip.OnEvent("Click", OnEventHandler)
	
	WhatEquip.OnEvent("Change", OnEventHandler)
	
	AutoCraftGauntlet.OnEvent("Click", OnEventHandler)
	
	DeviceList.OnEvent("Change", OnEventHandler)
	
	JakeCooldown.OnEvent("Change", OnEventHandler)
	
	WhenDoneEquip.OnEvent("Click", OnEventHandler)
    
	ButtonF1Start.OnEvent("Click", OnClickHandler)
	
	ButtonF2Stop.OnEvent("Click", OnEventHandler)
	
	myGui.OnEvent('Close', (*) => ExitApp())

	myGui.Title := "RexxsMacro V1.0"
	
	OnEventHandler(*)
	{

		IniWrite(ItemEnable.Value, A_ScriptDir "\Settings.ini", "Settings", "ItemEnable")

		IniWrite(ItemPath1.Value, A_ScriptDir "\Settings.ini", "Settings", "ItemPath1")

		IniWrite(AuraEquip.Value, A_ScriptDir "\Settings.ini", "Settings", "AuraEquip")
		
		IniWrite(WhatEquip.Value, A_ScriptDir "\Settings.ini", "Settings", "WhatEquip")
		
		IniWrite(AutoCraftGauntlet.Value, A_ScriptDir "\Settings.ini", "Settings", "AutoCraftGauntlet")
		
		IniWrite(JakeCooldown.Value, A_ScriptDir "\Settings.ini", "Settings", "JakeCooldown")
		
		IniWrite(WhenDoneEquip.Value, A_ScriptDir "\Settings.ini", "Settings", "WhenDoneEquip")

		IniWrite(DeviceList.Value, A_ScriptDir "\Settings.ini", "Settings", "DeviceList")

	}

	OnClickHandler(*)
	{
    if AutoCraftGauntlet.Value = 1
	{
		Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' A_ScriptDir '\Assets\Macros\JakeCooldown.ahk"')
	}
		Run('C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe "' A_ScriptDir '\Assets\Macros\AutoEquip.ahk"')
	}
	
	return myGui
}

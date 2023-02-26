#Requires AutoHotkey v2.0
SendMode "Input"

$CapsLock:: 
{
	CapsError := !KeyWait("CapsLock", "T0.5") ;When I press CapsLock wait 0.5 seconds for CapsLock to be released
	
	if CapsError ;If Capslock wasn't release within 0.5 second
	{ 
		if GetKeyState("CapsLock", "T") = 0
		SetCapsLockState("on")
		else 
		SetCapsLockState("off")
		CapsError := !KeyWait("CapsLock") ;Indefinitely wait for the release
	}
	
	else Send("{Alt Down}{Shift Down}{Shift Up}{Alt Up}")
	return
} 

#Requires AutoHotkey v2.0

SetCapsLockState("Off")  ; сбрасываем реальное состояние CapsLock при старте скрипта

$CapsLock::Send("{Alt down}{Shift down}{Shift up}{Alt up}")   ; просто CapsLock — смена раскладки

$<!CapsLock::SetCapsLockState(GetKeyState("CapsLock", "T") ? "Off" : "On")  ; Left Alt + CapsLock — настоящий Caps Lock
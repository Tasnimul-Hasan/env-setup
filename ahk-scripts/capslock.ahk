#Requires AutoHotkey v2.0+

; Apply remapping only when VS Code is active
#HotIf WinActive("ahk_exe Code.exe")

CapsLock::Esc  ; Remap CapsLock to Escape in VS Code

+CapsLock:: {  ; Shift + CapsLock restores CapsLock function in VS Code
    CapsLockState := GetKeyState("CapsLock", "T")
    SetCapsLockState !CapsLockState
}

#HotIf  ; Ends the conditional remapping

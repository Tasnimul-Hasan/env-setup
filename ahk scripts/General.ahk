#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Emails
::@mail::your_email.com
::@tail::your_email2.com
::@vail::your_email3.com

; Text
::@salam::as salamu alaikum
::@jawab::wa alaikum as salam
::@women::‍‍ /\＿/\                      /\＿/\+`n(   •ω•)                    (> _ <  )+`n/         >☕       ☕<           \+`n  Women              Women


; Launch Applications
+#t:: Run wt
+#b:: Run chrome
+#p:: Run potplayermini64
+#c:: Run code

; Shortcuts
#w:: Send !{f4}
XButton2::Send #^{Right}
XButton1::Send #^{Left}
#^f11:: Send #+s
#^+f11:: Send #^{f4}

#IfWinActive ahk_exe Chrome.exe
XButton2:: Send ^{Tab}
XButton1:: Send ^+{Tab}

#IfWinActive ahk_exe Postman.exe
XButton2:: Send ^{Tab}
XButton1:: Send ^+{Tab}

#IfWinActive ahk_exe Explorer.exe
#^f11:: Send #^d

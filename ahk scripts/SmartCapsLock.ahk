﻿; Capslock is mapped to ESC when pressed on its own, and CTRL when pressed in combination with any other key
; Shift + Capslock will act as regular
; source: https://gist.github.com/nocaoper/b872f97cda29bd8f0f2617606abd9fe4

LShift & Capslock::
SetCapsLockState, % (State:=!State) ? "on" : "alwaysoff"
Return

g_AbortSendEsc := false

#InstallKeybdHook
SetCapsLockState, alwaysoff
Capslock::
	g_DoNotAbortSendEsc := true
	Send {LControl Down}
	KeyWait, CapsLock
	Send {LControl Up}
	if ( A_PriorKey = "CapsLock")
	{
		if(g_DoNotAbortSendEsc){
			Send {Esc}
		}
	}
return

~*^a::
~*^b::
~*^c::
~*^d::
~*^e::
~*^f::
~*^g::
~*^h::
~*^i::
~*^j::
~*^k::
~*^l::
~*^m::
~*^n::
~*^o::
~*^p::
~*^q::
~*^r::
~*^s::
~*^t::
~*^u::
~*^v::
~*^w::
~*^x::
~*^y::
~*^z::
~*^1::
~*^2::
~*^3::
~*^4::
~*^5::
~*^6::
~*^7::
~*^8::
~*^9::
~*^0::
~*^Space::
~*^Backspace::
~*^Delete::
~*^Insert::
~*^Home::
~*^End::
~*^PgUp::
~*^PgDn::
~*^Tab::
~*^Return::
	~*^,::
~*^.::
~*^/::
	~*^;::
~*^'::
~*^[::
~*^]::
~*^\::
~*^-::
~*^=::
	~*^`::
~*^F1::
~*^F2::
~*^F3::
~*^F4::
~*^F5::
~*^F6::
~*^F7::
~*^F8::
~*^F9::
~*^F10::
~*^F11::
~*^F12::
	g_DoNotAbortSendEsc := false
return

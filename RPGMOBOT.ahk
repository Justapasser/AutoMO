#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
 #Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetKeyDelay ,50 ,100
detectHiddenWindows, on
CoordMode, Mouse, Client
CoordMode, Pixel, Client

;winCenter:552,330
;controlcenter:-8,-31
;位移:38,40
F3::
    MouseGetPos, , , id, control, 2
	MsgBox , get id %id% and control %control%
Return

F2::Pause

^d::
	;ControlSend ,,a,ahk_exe nw.exe
	IfWinNotActive,ahk_exe nw.exe
		WinActivate ,ahk_exe nw.exe
	WinWaitActive,ahk_exe nw.exe
	Controlclick ,x555 y90,ahk_exe nw.exe
	sleep 2250
	Controlclick ,x360 y230,ahk_exe nw.exe
	sleep 1750
	ControlSend ,,c,ahk_exe nw.exe
	sleep 750
	Controlclick ,x843 y218,ahk_exe nw.exe
	sleep 500
	Controlclick ,x627 y490,ahk_exe nw.exe
	sleep 1750
	Controlclick ,x669 y472,ahk_exe nw.exe
	sleep 1750
	WinMinimize ,ahk_exe nw.exe
Return

F4::
	Pause
	Loop
	{
	
		IfWinNotActive,ahk_exe nw.exe
			WinActivate ,ahk_exe nw.exe
		WinWaitActive,ahk_exe nw.exe
		PixelGetColor,Errcolor, 486, 313
		if (Errcolor = 0xFFFFFF)
		{
			PixelGetColor, Errcolor, 490, 310
			if(Errcolor = 0xFFFFFF)
				Pause
		}
		Controlclick ,x354 y160,ahk_id %control%
		sleep 1750
		Controlclick ,x354 y200,ahk_id %control%
		sleep 1750
		ControlSend ,,c,ahk_id %control%
		sleep 1250
		ControlSend ,,d,ahk_id %control%
		sleep 500
		Controlclick ,x737 y400,ahk_id %control%
		sleep 1750
		Controlclick ,x694 y380,ahk_id %control%
		sleep 1750
		WinMinimize ,ahk_exe nw.exe
		sleep 120000
	}
Return


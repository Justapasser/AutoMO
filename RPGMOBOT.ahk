#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
 #Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetKeyDelay ,50 ,150
detectHiddenWindows, on
CoordMode, Mouse, Client
CoordMode, Pixel, Client

;winCenter:552,330
;controlcenter:-8,-31
;位移:38,40
F3::
    MouseGetPos, , , id, control, 2
	MsgBox , get id %id% and control %control%
	WinSet AlwaysOnTop, On, ahk_id %id%
Return

F2::Pause
F6::WinShow, ahk_id %id%
F7::WinHide, ahk_id %id%
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
	IfWinNotActive, ahk_id %id%
		WinActivate , ahk_id %id%
	WinWaitActive, ahk_id %id%
	Loop
	{

		;WinHide, ahk_id %id%
		;PixelGetColor,Errcolor, 486, 313
		;if (Errcolor = 0xFFFFFF)
		;{
		;	PixelGetColor, Errcolor, 490, 310
		;	if(Errcolor = 0xFFFFFF)
		;	{
		;		WinShow
		;		Pause
		;	}
		;}
		Controlclick ,,ahk_id %control%,,,,x354 y160 NA
		sleep 1750
		Controlclick ,,ahk_id %control%,,,,x354 y200 NA
		sleep 1750
		Controlclick ,,ahk_id %control%,,,,x725 y470 NA
		sleep 1500
		Controlclick ,,ahk_id %control%,,,,x830 y185 NA
		sleep 500
		Controlclick ,,ahk_id %control%,,,,x785 y420 NA
		sleep 1750
		Controlclick ,,ahk_id %control%,,,,x694 y380 NA
		sleep 1750
		;WinShow
		;;WinMinimize ,ahk_exe nw.exe
		sleep 120000
	}
Return


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
 #Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetKeyDelay ,50 ,150

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
/*
左键连点器，存通货用，ctrl+左键开启，再次点击关闭
*/
#If WinActive("ahk_exe PathOfExile_x64.exe") or WinActive("ahk_exe PathOfExile.exe") or WinActive("ahk_exe notepad++.exe") or WinActive("ahk_exe Code.exe")
^LButton::
	Sleeptime := 50 		; 延迟
	Toggle := !Toggle		; 开关
	SetTimer Clickit, % Toggle ? Sleeptime : "off"	; 计时器示例，
return
 
clickit() 
{				;点击
	Click			
}
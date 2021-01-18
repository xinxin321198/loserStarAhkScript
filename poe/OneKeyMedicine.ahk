/*
OneKeyMedicine.ahk 该脚本为按下XButton2键（鼠标前进键），然后依次触发12345键，如需增加其他按键请自行添加
*/
; 限制在某个进程内才可用(使用ahk自带的windows spy查看窗口的exe名称)，如全局都需要，请删除下面的一行
#If WinActive("ahk_exe PathOfExile_x64.exe") or WinActive("ahk_exe PathOfExile.exe") or WinActive("ahk_exe notepad++.exe") or WinActive("ahk_exe Code.exe")
$XButton2::
Send {1}
Send {2}
Send {3}
Send {4}
Send {5}
Return
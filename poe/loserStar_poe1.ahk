/*
loserStar自用poe的脚本，综合自动释放q和一键嗑药
*/

/*
OnkeyLoop.ahk 该脚本为按下某个按钮开启自动连续点击某个或某几个按键，再次按下关闭
*/
; 限制在某个进程内才可用(使用ahk自带的windows spy查看窗口的exe名称)，如全局都需要，请删除下面的一行
#If WinActive("ahk_exe PathOfExile_x64.exe") or WinActive("ahk_exe PathOfExile.exe") or WinActive("ahk_exe notepad++.exe") or WinActive("ahk_exe Code.exe")
v_Enable=0
; 触发热键默认为XButton1（鼠标的倒退键），请自行修改
$XButton1::
{
    v_Enable:=!v_Enable
    If(v_Enable=0)
    {
        ; 关闭定时器
        SetTimer, loserStar_run, Off	 
        ; TrayTip, , begin end, 3, 17	
    }
    ELSE
    {
        ; 启动定时器
        SetTimer, loserStar_run, on	 
        ; TrayTip, , end, 3, 17 
    }
}Return

; 方法定义
loserStar_run: 
{
    ; 自由发挥需要执行什么操作，
    Send , ^{q}
    ; 执行的周期（毫秒）
    Sleep, 100
}
Return


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
Send {t}
Return

/*
左键连点器，存通货用
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
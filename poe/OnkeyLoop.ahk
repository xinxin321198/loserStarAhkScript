/*
该脚本为按下某个按钮开启自动连续点击某个或某几个按键，再次按下关闭
*/
; 限制在某个进程内才可用(使用ahk自带的windows spy查看窗口的exe名称)，如全局都需要，请删除下面的一行
#If WinActive("ahk_exe PathOfExile_x64.exe") or WinActive("ahk_exe PathOfExile.exe") or WinActive("ahk_exe notepad++.exe") or WinActive("ahk_exe Code.exe")
v_Enable=0
; 触发热键默认为XButton1（鼠标的倒退键），请自行修改
$`::
{
    v_Enable:=!v_Enable
    If(v_Enable=0)
    {
        ; 关闭定时器
        SetTimer, loserStar_run, Off	 
        TrayTip, , begin end, 3, 17	
    }
    ELSE
    {
        ; 启动定时器
        SetTimer, loserStar_run, on	 
        TrayTip, , end, 3, 17 
    }
}Return

; 方法定义
loserStar_run: 
{
    ; 自由发挥需要执行什么操作，
    Send , ^q
    ; 执行的周期（毫秒）
    Sleep, 500
}
Return
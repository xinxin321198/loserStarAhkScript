/*
OneKeyMedicine.ahk 该脚本为按下XButton2键（鼠标前进键），然后依次触发12键，如需增加其他按键请自行添加
*/
; 限制在某个进程内才可用(使用ahk自带的windows spy查看窗口的exe名称)，如全局都需要，请删除下面的一行
#If WinActive("ahk_exe PathOfExile_x64.exe") or WinActive("ahk_exe PathOfExile.exe") or WinActive("ahk_exe notepad++.exe") or WinActive("ahk_exe Code.exe")
    ; 不带 $热键可以由实际的键盘输入或通过 Send 命令发送的按键触发。 带 $：热键只对直接的键盘输入作出反应，而忽略通过 Send 发送的相同按键。

    ; 按空格键触发（位移+其它组合）
    $Space::
        Send {Space}
        Send {1}
        Send {2}
        Send {3}
        Send {4}
        Send {5}
        Send {R}
        Send {T}
    Return

    ; 按鼠标前进键触发
    $XButton2::
        Send 鼠标前进键输出的文本
    Return

    ; 按鼠标后退键触发
    $XButton1::
        Send 鼠标后退键输出的文本
    Return

    ; 按键盘1旁边的波浪号键触发（常规喝药）
    $`::
        Send {1}
        Send {2}
        Send {3}
        Send {4}
        Send {5}
    Return


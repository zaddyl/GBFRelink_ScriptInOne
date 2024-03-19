; Bilibili@长野碎毛Semo
#SingleInstance Force
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1
gui +toolwindow
Gui Font, s9, Segoe UI
Gui Add, Button, x7 y8 w55 h40 gLClick, 連發X
Gui Add, Button, x64 y8 w55 h40 gRClick, 連發Y
Gui Add, Button, x122 y8 w65 h40 gAutoHang, 自動掛機
Gui Add, Button, x7 y50 w180 h40 gunbelievable, 自動抽獎`n(上級失敗自動停止)
Gui Add, text,x9 y95, F8=加護快速拆解
Gui Add, text,x9 y115, F10=暫停/恢復宏(默認暫停)
Gui Add, text,x9 y135, F12=停止當前脚本
Gui Show, w191 h158, GBFR腳本助手
Return

LClick:
run %A_ScriptDir%\data\LClick.exe,, hide, hwnd
return

RClick:
run %A_ScriptDir%\data\RClick.exe,, hide, hwnd
return

AutoHang:
run %A_ScriptDir%\data\AutoHang.exe,, hide, hwnd
return

unbelievable:
run %A_ScriptDir%\data\unbelievable!.exe,, hide, hwnd
return

F8:
run %A_ScriptDir%\data\WrightStoneDismental.exe,, hide, hwnd
return

guiescape:
GuiClose:
ExitApp
return
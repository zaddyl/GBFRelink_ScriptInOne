; Bilibili@長野碎毛Semo
#SingleInstance force
#NoEnv
menu,tray,icon,tskbico.dll,4,1
SetWorkingDir %A_ScriptDir%
SetBatchLines -1
sendmode, input
setkeydelay 50,20
setmousedelay 50
winsettitle, ahk_exe GBScript.exe,,GBFR腳本助手：X連發

main:
pause,on
loop{
	send,{lbutton up}
	sleep 20
	send,{lbutton down}
	sleep 20
}
goto main

lbutton::
pause, off
return

lbutton up::
pause, on
return

f10::
pause, toggle
return

f12::
winsettitle, ahk_exe GBScript.exe,,GBFR腳本助手
goto guiescape

guiescape:
guiclose:
exitapp
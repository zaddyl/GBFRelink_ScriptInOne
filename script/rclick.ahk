; Bilibili@長野碎毛Semo
#SingleInstance force
#NoEnv
menu,tray,icon,tskbico.dll,5,1
SetWorkingDir %A_ScriptDir%
SetBatchLines -1
sendmode, input
setkeydelay 50,20
setmousedelay 50
winsettitle, ahk_exe GBScript.exe,,GBFR腳本助手：Y連發

main:
pause,on
loop{
	click right down
	sleep 20
              click right up
	sleep 20
}
goto main

rbutton up::
pause,on
return

rbutton::
pause,off
return

f10::
pause, on
return

f12::
winsettitle, ahk_exe GBScript.exe,,GBFR腳本助手
goto guiescape

guiescape:
guiclose:
exitapp
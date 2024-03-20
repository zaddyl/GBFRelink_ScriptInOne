; Bilibili@長野碎毛Semo
#SingleInstance force
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1
sendmode, input
setkeydelay 50,20
setmousedelay 50
#include findclick.ahk
winsettitle, ahk_exe GBScript.exe,,アンビーリーバボ！
pause, on

findupper(){
	FindClick("upper", "a765,528,45,45 n0 o20",x,y)
	if(x*y){
		return 1
	}
}

main:
while(!findupper()){
	send,{lbutton up}
	sleep 20
	send,{lbutton down}
	sleep 20
}
winsettitle, ahk_exe GBScript.exe,,GBFR腳本助手

f10::
pause, toggle
return

f12::
winsettitle, ahk_exe GBScript.exe,,GBFR腳本助手
exitapp

guiescape:
guiclose:
exitapp
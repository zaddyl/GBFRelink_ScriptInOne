; Bilibili@長野碎毛Semo
#SingleInstance force
#NoEnv
menu,tray,icon,tskbico.dll,3,1
SetWorkingDir %A_ScriptDir%
SetBatchLines -1
setkeydelay 50,10
setmousedelay 50
#include findclick.ahk
winsettitle, ahk_exe GBScript.exe,,GBFR腳本助手：加護分解

findcheck(){
	FindClick("dis", "a85,260,50,50 n0 o20",x,y)
	if(x*y){
		return 1
	}
}

findnull(){
	FindClick("disb", "a80,244,45,45 n0 o40",x,y)
	if(x*y){
		return 1
	}
}

main: 
loop,30{
	send,{s}
	if(findcheck()){
		gosub dism
		pause, on
		goto main
	}
	click
	sleep 50
}
gosub dism
goto main

dism:
send,{3}
send,{w}
click
sleep 200
click
send,{s}
click
click
sleep 50
if(!findnull()){
	goto main
}
winsettitle, ahk_exe GBScript.exe,,GBFR腳本助手
exitapp

f8::
winsettitle, ahk_exe GBScript.exe,,GBFR腳本助手
exitapp
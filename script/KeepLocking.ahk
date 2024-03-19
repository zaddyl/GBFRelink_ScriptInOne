; Bilibili@長野碎毛Semo
#SingleInstance force
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1
sendmode, input
setkeydelay 50,20
setmousedelay 50
gui,new

main:
loop{
	send,{tab down}
	sleep 500
}
send,{tab up}
goto guiescape

guiclose:
guiescape:
send,{tab up}
exitapp
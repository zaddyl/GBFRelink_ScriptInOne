; Bilibili@長野碎毛Semo
#SingleInstance force
#NoEnv
winsettitle, ahk_exe GBScript.exe,,GBFR腳本助手：自動掛機 
SetWorkingDir %A_ScriptDir%
SetBatchLines -1
setkeydelay,20,50
SetMouseDelay, 20
#include findclick.ahk
detecthiddenwindows, on
t:=0, wx:=A_screenwidth-150, wy:=50 
Gui Font, s9, Segoe UI
gui,show,x%wx% y%wy% w115 h108 na,掛機計數
gui +alwaysontop +toolwindow
gui,add,text,x28 y8 w80 h20 vcounter
gui,add,text,x17 y28 w100 h20,開箱行進時長:
gui,add,edit,x33 y46 w33 h19 vdist number limit4 -wrap,3800
gui,add,text,x69 y47 w80 h20,ms
gui,add,checkbox,x25 y68 vkey,seya模式
gui,add,checkbox,x18 y85 vslime,史萊姆模式
guicontrol,text,counter,已進行%t%場
pause, On

FindEXP(){
	FindClick("1", "a1643,557,45,45 n0 o20",x,y) ;查找exp
	if(x*y){
		return 1
	}
}

FindB(){
	FindClick("2", "a105,50,45,45 n0 o20",x,y) ;查找B
	if(x*y){
		return 1
	}
}

findreb(){
	FindClick("4", "a77,960,45,45 n0 o20",x,y) ;查找再次挑戰的底圖
	if(x*y){
		return 1
	}
}

findre(){
	FindClick("3", "a213,962,45,45 n0 o20",x,y) ;查找再次挑戰的"3"按鈕(僅限繁中、簡中)
	if(x*y){
		return 1
	}
}

findchk(){
	FindClick("5", "a942,277,45,45 n0 o20",x,y) ;查找再次挑戰確認界面
	if(x*y){
		return 1
	}
}

main:
gui,show,x%wx% y%wy% w115 h108 na,掛機計數
if(key=0){
	atkkey=lbutton
}else{
	atkkey=RButton
}
loop,20{
	if(FindEXP()){
		goto reward
	}
	loop,10{
		send,{%atkkey%}
	}
	send,{r}
}
send,{1}
goto main

reward:
gui, submit
if(key=1){
	dist:=%dist%-3000
	if(dist<0){
		dist:=0
	}
}
t++
guicontrol,text,counter,已進行%t%場
gui,show,x%wx% y%wy% w115 h108 na,掛機計數
send,{d}
send,{w down}
sleep %dist%
send, {w up}
send,{e}
sleep 2500
send, {d down}
sleep 200
send, {d up}
send,{e}
sleep 1000
loop,4{
	send,{s down}
	sleep 50
	send, {s up}
	send, {d down}
	sleep 200
	send, {d up}
	send,{e}
	sleep 2300
}
loop{
	sleep 500
}until findb()
while(!findreb()){
	click
}
if (findre()){
	loop{
		send,{3}
		sleep 50
	}until findchk()
}
loop,20{
	click
}
sleep 9000
if(slime=1){
	send,{w down}
	sleep 4500
	send,{w up}
}else{
	sleep 5000
}
goto main

f10::
pause, off
if(hwnd){
	winclose,ahk_pid %hwnd%
	hwnd=
	pause,on
}else{
	run,KeepLocking.exe,,hide,hwnd
	gui,submit
}
return

f12::
msgbox,,,已停止,點擊確認退出
goto guiescape

guiescape:
guiclose:
winclose,ahk_pid %hwnd%
winsettitle, ahk_exe GBScript.exe,,GBFR腳本助手
exitapp
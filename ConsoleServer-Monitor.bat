@echo off
title "ConsoleServer-Monitor(如果是安装或升级话务台服务器，请先停止该程序)"

set /a num=0

:loop
set /a num+=1

rem  扫描是否有ConsoleServer.exe程序在运行，如果没有找到才执行"||"后面的内容
tasklist|find /I "ConsoleServer.exe" > nul||(timeout /t 1 >nul & start "ConsoleServer.exe" "C:\Program Files (x86)\eSpace_UC\ConsoleServer\ConsoleServer.exe"&timeout /t 1 >nul )
	
rem wait 1 seconds
timeout /t 1  >nul
echo "this is the %num%th run"
date /T
time /t

goto loop

rem pause

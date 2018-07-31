@echo off
rem 去掉无限循环，采用for /l %%i in (start,step,end) do {}等指定次数来循环，在1分钟内每5分钟执行一次，共执行720次
rem :loop
rem 最小化隐藏cmd窗口
rem start "" "%appdata%\Microsoft\Internet Explorer\Quick Launch\Shows Desktop.lnk"

rem Start program, with title and program path

for /l %%i in (1,1,56) do (
	time /T >> "C:\Users\h00284904\Desktop\timeCnt.txt"
	tasklist|find /I "ConsoleServer.exe" > nul||start "ConsoleServer.exe" "C:\Program Files (x86)\eSpace_UC\ConsoleServer\ConsoleServer.exe"|date /T >> "C:\Users\h00284904\Desktop\time-record.txt"|time /T >> "C:\Users\h00284904\Desktop\time-record.txt"
	
	rem wait 2 seconds
	timeout /t 2 >nul 
	)




rem 去掉无限循环，采用for /l %%i in (start,step,end) do {}等指定次数来循环，在1分钟内每5分钟执行一次，共执行720次
rem  goto loop

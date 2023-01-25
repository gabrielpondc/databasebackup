@echo off
set curdir=%cd%
for /f  %%i in ('dir /b /ad "%curdir%"') do (
	Forfiles /p "%curdir%\%%i" /m *.nb3 /d -2 /c "cmd /c del @path -y"  
	CHOICE /T 3 /C ync /CS /D y /n
)
exit
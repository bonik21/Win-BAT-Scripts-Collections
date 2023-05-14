@echo off
SET "SearchPath=C:\Windows\Logs"
SET "FilenameFilter=*.log"

for %%r in ("%SearchPath%\.") do for /f "tokens=3,*" %%a in ('
    robocopy "%%~fr." "%%~fr." "%FilenameFilter%" /l /nocopy /s /is /njh /njs /ndl /nc /ns /ts 
    ^| sort /r 
    ^| findstr /n "^"
    ^| findstr /l /b /c:"1:"
') do SET "Result=%%b"

Set filename=%Result%
For %%A in ("%filename%") do (
    Set Folder=%%~dpA
    Set Name=%%~nxA
)
:echo.Folder is: %Folder%
:echo.Name is: %Name%

start "" "%Folder%"
exit
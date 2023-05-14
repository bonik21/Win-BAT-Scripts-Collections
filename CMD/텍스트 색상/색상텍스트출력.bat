@ECHO off
:bat 실행 경로로 이동
pushd "%~dp0"

CALL:ECHORED "빨간색 텍스트 출력!"

:ECHORED
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red %1
:goto:eof

:exit
pause
exit
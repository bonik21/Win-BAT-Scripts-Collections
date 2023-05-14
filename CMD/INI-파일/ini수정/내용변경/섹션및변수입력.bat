@ECHO off
:bat 실행 경로로 이동
pushd "%~dp0"

:섹션 내 변수 입력
nircmd inisetval ".\config.ini" "aaa" "bbb" "789"

nircmd inisetval ".\config.ini" "ggg" "ttt" "가나다"

:exit
pause
exit
@ECHO off
:bat 실행 경로로 이동
pushd "%~dp0"

:섹션 내 변수 삭제
nircmd inidelval ".\config.ini" "aaa" "bbb"

:exit
pause
exit
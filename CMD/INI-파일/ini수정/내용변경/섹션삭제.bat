@ECHO off
:bat 실행 경로로 이동
pushd "%~dp0"

:섹션 삭제
nircmd inidelsec ".\config.ini" "aaa"

:exit
pause
exit
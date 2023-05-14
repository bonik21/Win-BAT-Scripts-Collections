@ECHO off
:utf-8 파일 읽을 수 있게 인코딩 추가
:@chcp 65001 1> NUL 2> NUL

:bat 실행 경로로 이동
pushd "%~dp0"

netstat -na | findstr "127.0.0.1" | findstr "ESTABLISHED" 

ipconfig | findstr "IPv4"

:exit
pause
exit
@ECHO off
:UTF-8로 작성된 .ini파일의 한글 깨짐 방지
chcp 65001

:bat 실행 경로로 이동
pushd "%~dp0"

type config.ini | findstr -i "cubase"

:exit
pause
exit
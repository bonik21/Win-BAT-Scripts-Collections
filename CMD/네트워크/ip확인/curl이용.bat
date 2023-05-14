@ECHO off
:bat 실행 경로로 이동
pushd "%~dp0"

TITLE cmd창 제목

echo 창크기 설정
MODE con cols=100 lines=40

curl ifconfig.me

echo.
:exit
pause
exit
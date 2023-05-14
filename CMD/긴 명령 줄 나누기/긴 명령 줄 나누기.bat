@ECHO off
:bat 실행 경로로 이동
pushd "%~dp0"

TITLE cmd창 제목

echo 창크기 설정
MODE con cols=100 lines=40


:wmic logicaldisk get deviceid, volumename 이라는 명령어를 여러줄로 입력
wmic ^
logicaldisk ^
get deviceid, ^
volumename

:exit
pause
exit
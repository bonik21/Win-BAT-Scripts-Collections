@ECHO off
:bat 실행 경로로 이동
pushd "%~dp0"

TITLE 파일명으로 폴더 만들어서 파일 이동

echo 창크기 설정
MODE con cols=100 lines=40

:dir 명령어를 이용한 파일목록 출력
dir *.* /a-d /b

:for문을 이용한 파일목록 출력
for /f tokens^=* %%i in ('where .:*')do echo/ Path: %%~dpi ^| Name: %%~nxi

:exit
pause
exit
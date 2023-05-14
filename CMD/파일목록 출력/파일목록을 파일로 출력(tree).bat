@ECHO off
:bat 실행 경로로 이동
pushd "%~dp0"

TITLE 파일명으로 폴더 만들어서 파일 이동

echo 창크기 설정
MODE con cols=100 lines=40

:현재 경로 파일목록을 텍스트로 출력
tree /f > 파일목록_현재경로.txt

:특정 경로 파일목록을 텍스트로 출력 (직접입력)
set TARGET="C:\Windows\System32\drivers\etc"
tree %TARGET% /f > 파일목록_etc.txt

:특정 경로 파일목록을 텍스트로 출력 (윈도우변수 사용 e.g.: %userprofile%, %appdata% 등)
tree %USERPROFILE%\desktop /f > 파일목록_desktop.txt

:exit
pause
exit
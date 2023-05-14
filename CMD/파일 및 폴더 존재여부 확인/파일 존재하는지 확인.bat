@ECHO off
:bat 실행 경로로 이동
pushd "%~dp0"

:타이틀 및 창크기 설정
TITLE 파일별 폴더 작성 및 이동(알파벳만 인식)
MODE con cols=100 lines=40

:확장자가 .mp4인 파일이 있다면 yes
IF EXIST "*.mp4" (echo yes) ELSE (echo no)

:EFG라는 폴더가 있다면 yes
IF EXIST EFG\NUL (echo yes) ELSE (echo no)

:EFG라는 파일이나 폴더가 있다면 yes
IF EXIST "EFG" (echo yes) ELSE (echo no)


:End
ECHO:  엔터키를 눌러 스크립트를 종료합니다.
pause >nul
exit
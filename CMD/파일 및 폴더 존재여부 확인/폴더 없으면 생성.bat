@ECHO off
:bat 실행 경로로 이동
pushd "%~dp0"
cd

:타이틀 및 창크기 설정
TITLE 파일별 폴더 작성 및 이동(알파벳만 인식)
MODE con cols=100 lines=40

if not exist "ABCE" (md "ABCE" & echo ABCE 폴더를 생성하였습니다.) else (echo "ABCE 폴더가 존재합니다.")

:End
ECHO: 엔터키를 눌러 스크립트를 종료합니다.
pause >nul
exit
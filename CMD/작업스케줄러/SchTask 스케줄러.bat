@ECHO off
:bat 실행 경로로 이동
pushd "%~dp0"

TITLE cmd창 제목

echo 창크기 설정
MODE con cols=100 lines=40

:Schtasks 명령어를 이용한 작업스케줄러 처리

:예약된 작업 표시
Schtasks /Query

:스케줄러 작업 시작 (주석처리되어 있음)
:schtasks /Run /TN 스케줄러이름

:스케줄러 종료 (주석처리되어 있음)
:schtasks /End /TN 스케줄러이름

:exit
pause
exit
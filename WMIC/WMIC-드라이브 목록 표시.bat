@ECHO off
:bat 실행 경로로 이동
pushd "%~dp0"

:사용중인 드라이브 목록 표시
ECHO.
ECHO. 
ECHO 현재 %ComputerName%에서 사용중인 드라이브 문자를 찾고 있습니다.
wmic logicaldisk get deviceid, volumename
ECHO 현재 %ComputerName%에서 사용중인 드라이브 문자는 위과 같습니다.

:exit
pause
exit

@ECHO OFF
pushd "%~dp0"

:curl이 환경변수에 등록되었는지 확인
where curl

if %ERRORLEVEL% == 0 (
	echo:  OK
	echo:  엔터를 눌러 스크립트를 종료합니다.
	pause>nul
)
if %ERRORLEVEL% == 1 (
	echo:  제대로 처리되지 않았습니다. 
	echo:  엔터를 눌러 스크립트를 종료합니다.
	pause>nul
)
exit
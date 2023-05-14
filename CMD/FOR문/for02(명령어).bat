@ECHO off
:bat 실행 경로로 이동
pushd "%~dp0"

For /F %%A IN ('ipconfig') DO ECHO %%A
ECHO.

For /F %%A IN ('ipconfig 2^>^&1 ^| find "IPv4"') DO ECHO %%A
ECHO.

For /F "delims=" %%A in ('ipconfig 2^>^&1 ^| find "IPv4"') DO ECHO %%A
ECHO.

For /F "TOKENS=1-13" %%A in ('ipconfig 2^>^&1 ^| find "IPv4"') DO ECHO "%%M"
ECHO.

For /F "TOKENS=1-2 delims=:" %%A in ('ipconfig 2^>^&1 ^| find "IPv4"') DO ECHO "%%B"
ECHO.

:exit
pause
exit
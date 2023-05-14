@ECHO off
:bat 실행 경로로 이동
pushd "%~dp0"

:For문 TOKENS사용법 (띄어쓰기 기준)
ECHO  [TOKENS 사용법]

For /F %%A IN (sample.txt) DO ECHO %%A
ECHO.

For /F "TOKENS=1" %%A IN (sample.txt) DO ECHO %%A
ECHO.

For /F "TOKENS=1-2" %%A IN (sample.txt) DO ECHO %%A %%B
ECHO.

For /F "TOKENS=1-3" %%A IN (sample.txt) DO ECHO %%A %%B %%C
ECHO.


:DELIMS 사용법 (선언한 문자 기준)
ECHO  [DELIMS 사용법]

For /F "TOKENS=1 DELIMS=줄" %%A IN (sample.txt) DO ECHO %%A
ECHO.

For /F "TOKENS=1-2 DELIMS=줄" %%A IN (sample.txt) DO ECHO %%A %%B
ECHO.

:exit
pause
exit
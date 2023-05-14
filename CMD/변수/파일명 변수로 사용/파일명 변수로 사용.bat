@ECHO off
:bat 실행 경로로 이동
pushd "%~dp0"

SetLocal EnableDelayedExpansion
echo [파일목록 표시]
for /r %%f in (*.*) do (
set filename=%%f
echo !filename!
)
echo.

echo [파일목록 표시(경로 제거)]
for /r %%f in (*.*) do (
set filename=%%~nxf
echo !filename!
)
echo.

echo [파일목록 표시(확장자 제거 ~n)]
for /r %%f in (*.*) do (
set filename=%%~nf
echo !filename!
)
echo.

echo [파일목록 표시(확장자 제거2 ~nx후 4글자 삭제)]
for /r %%f in (*.*) do (
set filename=%%~nxf
echo !filename:~0,-4!
)
echo.

echo [파일목록 표시(확장자만 표시 ~x)]
for /r %%f in (*.*) do (
set filename=%%~xf
echo !filename!
)
echo.

echo [파일목록 표시(전체경로만 표시 ~dp)]
for /r %%f in (*.*) do (
set filename=%%~dpf
echo !filename!
)
echo.

echo [파일목록 표시(드라이브명만 표시 ~d)]
for /r %%f in (*.*) do (
set filename=%%~df
echo !filename!
)
echo.

echo [파일목록 표시(경로만 표시 ~p)]
for /r %%f in (*.*) do (
set filename=%%~pf
echo !filename!
)
echo.

:exit
pause
exit
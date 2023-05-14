@ECHO off
::bat파일이 있는 경로로 이동::
pushd "%~dp0"

echo 변수에 기본값(default) 설정하기
echo.
echo.
set /p "var01=변수값 입력 (기본값:123) : " || SET "var01=123"

echo.
echo.
echo 변수 : %var01%
echo:  엔터키를 눌러 스크립트를 종료합니다.
pause >nul
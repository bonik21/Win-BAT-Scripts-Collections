@ECHO off

:bat 실행 경로로 이동
pushd "%~dp0"

set /p target_path=폴더 경로 입력 (e.g. : C:\VR_Video) : 

@echo [Webdav로 접속할 폴더]>> config.ini
@echo Target_Path=%target_path%>> config.ini
@echo.>> config.ini

echo.
echo:  config.ini 파일에 Webdav로 접속할 폴더 %target_path%가 추가되었습니다.
echo.
echo:  엔터키를 눌러 스크립트를 종료합니다.
pause >nul
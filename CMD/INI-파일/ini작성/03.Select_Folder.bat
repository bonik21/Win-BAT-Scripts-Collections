@ECHO off

:STEP.00-SET_VAR
SET TITEL_LINE=####################################################################
SET LINE=--------------------------------------------------------------------
SET SCRIPT_VERSION=1.0
SET AUTHOR=BoniK (http://dim7.net)

:STEP.03-SELECT_FOLDER
ECHO:%LINE%
ECHO:    STEP 03. Webdav 로 접속할 폴더를 선택합니다.
ECHO:%LINE%

cd %~dp0
set /p target_path=폴더 경로 입력 (e.g. : C:\VR_Video) : 

@echo [Webdav로 접속할 폴더]>> config.ini
@echo Target_Path=%target_path%>> config.ini
@echo.>> config.ini

echo.
echo:  config.ini 파일에 Webdav로 접속할 폴더 %target_path%가 추가되었습니다.
echo.
echo:  엔터키를 눌러 스크립트를 종료합니다.
pause >nul
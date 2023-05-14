@ECHO off
@chcp 65001 1> NUL 2> NUL

pushd "%~dp0"
:: config.ini 파일 읽기 ::
for /f "tokens=1,2 delims==" %%a in (config.ini) do (
if %%a==Cubase_Version set Cubase_Version=%%b
if %%a==Zip_Path set Zip_Path=%%b
if %%a==Backup_Path set Backup_Path=%%b
)

ECHO:  [큐베이스 버전]
ECHO:  %Cubase_Version%
ECHO.
ECHO:  [큐베이스 설정 파일 경로]
ECHO:  %APPDATA%\Steinberg\%Cubase_Version%
ECHO.
ECHO:  [7-zip 설치 경로]
ECHO:  %Zip_Path%
ECHO.
ECHO:  [백업 파일 저장 경로]
ECHO:  %Backup_Path%
ECHO.
ECHO:  엔터키를 눌러 스크립트를 종료합니다.
pause >nul
exit
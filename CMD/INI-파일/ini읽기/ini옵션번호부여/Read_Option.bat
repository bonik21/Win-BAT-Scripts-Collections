@ECHO OFF
pushd "%~dp0"

:rclone 환경변수 등록
:SET Rclone_Path=C:\rclone
:SET PATH=%PATH%;%Rclone_Path%

setlocal enableextensions enabledelayedexpansion
set /a opt_count = 0
for /f "tokens=*" %%B in (mount-option.ini) do (
  set /a opt_count += 1
  ECHO [옵션.!opt_count!]
  ECHO %%B
  ECHO.
  set option_!opt_count!=%%B
)

:select_option
ECHO.
ECHO. 
SET /P O=옵션 번호 선택 후 엔터:
IF %O% gtr 0 set This_Option=!option_%O%!

:show_selected_option
ECHO.
ECHO.
ECHO 다음 옵션을 적용합니다. 옵션 [!O!]
ECHO %This_Option%


ECHO.
ECHO.
:echo start rclone.exe mount GoogleTeam01:/ A: %This_Option%


:endlocal
endlocal

pause
exit
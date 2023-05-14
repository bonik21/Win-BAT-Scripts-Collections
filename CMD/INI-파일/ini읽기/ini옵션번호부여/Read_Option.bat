@ECHO OFF
pushd "%~dp0"

:rclone ȯ�溯�� ���
:SET Rclone_Path=C:\rclone
:SET PATH=%PATH%;%Rclone_Path%

setlocal enableextensions enabledelayedexpansion
set /a opt_count = 0
for /f "tokens=*" %%B in (mount-option.ini) do (
  set /a opt_count += 1
  ECHO [�ɼ�.!opt_count!]
  ECHO %%B
  ECHO.
  set option_!opt_count!=%%B
)

:select_option
ECHO.
ECHO. 
SET /P O=�ɼ� ��ȣ ���� �� ����:
IF %O% gtr 0 set This_Option=!option_%O%!

:show_selected_option
ECHO.
ECHO.
ECHO ���� �ɼ��� �����մϴ�. �ɼ� [!O!]
ECHO %This_Option%


ECHO.
ECHO.
:echo start rclone.exe mount GoogleTeam01:/ A: %This_Option%


:endlocal
endlocal

pause
exit
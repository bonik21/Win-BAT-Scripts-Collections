@ECHO off

:STEP.00-SET_VAR
SET TITEL_LINE=####################################################################
SET LINE=--------------------------------------------------------------------
SET SCRIPT_VERSION=1.0
SET AUTHOR=BoniK (http://dim7.net)

:STEP.03-SELECT_FOLDER
ECHO:%LINE%
ECHO:    STEP 03. Webdav �� ������ ������ �����մϴ�.
ECHO:%LINE%

cd %~dp0
set /p target_path=���� ��� �Է� (e.g. : C:\VR_Video) : 

@echo [Webdav�� ������ ����]>> config.ini
@echo Target_Path=%target_path%>> config.ini
@echo.>> config.ini

echo.
echo:  config.ini ���Ͽ� Webdav�� ������ ���� %target_path%�� �߰��Ǿ����ϴ�.
echo.
echo:  ����Ű�� ���� ��ũ��Ʈ�� �����մϴ�.
pause >nul
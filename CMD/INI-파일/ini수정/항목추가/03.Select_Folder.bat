@ECHO off

:bat ���� ��η� �̵�
pushd "%~dp0"

set /p target_path=���� ��� �Է� (e.g. : C:\VR_Video) : 

@echo [Webdav�� ������ ����]>> config.ini
@echo Target_Path=%target_path%>> config.ini
@echo.>> config.ini

echo.
echo:  config.ini ���Ͽ� Webdav�� ������ ���� %target_path%�� �߰��Ǿ����ϴ�.
echo.
echo:  ����Ű�� ���� ��ũ��Ʈ�� �����մϴ�.
pause >nul
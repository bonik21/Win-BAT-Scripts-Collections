@ECHO off
:bat ���� ��η� �̵�
pushd "%~dp0"

:������� ����̺� ��� ǥ��
ECHO.
ECHO. 
ECHO ���� %ComputerName%���� ������� ����̺� ���ڸ� ã�� �ֽ��ϴ�.
wmic logicaldisk get deviceid, volumename
ECHO ���� %ComputerName%���� ������� ����̺� ���ڴ� ���� �����ϴ�.

:exit
pause
exit
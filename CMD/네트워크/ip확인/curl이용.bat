@ECHO off
:bat ���� ��η� �̵�
pushd "%~dp0"

TITLE cmdâ ����

echo âũ�� ����
MODE con cols=100 lines=40

curl ifconfig.me

echo.
:exit
pause
exit
@ECHO off
:bat ���� ��η� �̵�
pushd "%~dp0"

:���� �� ���� ����
nircmd inidelval ".\config.ini" "aaa" "bbb"

:exit
pause
exit
@ECHO off
:bat ���� ��η� �̵�
pushd "%~dp0"

:���� �� ���� �Է�
nircmd inisetval ".\config.ini" "aaa" "bbb" "789"

nircmd inisetval ".\config.ini" "ggg" "ttt" "������"

:exit
pause
exit
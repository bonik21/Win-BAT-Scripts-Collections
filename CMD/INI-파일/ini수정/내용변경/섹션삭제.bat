@ECHO off
:bat ���� ��η� �̵�
pushd "%~dp0"

:���� ����
nircmd inidelsec ".\config.ini" "aaa"

:exit
pause
exit
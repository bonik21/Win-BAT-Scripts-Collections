@ECHO off
:utf-8 ���� ���� �� �ְ� ���ڵ� �߰�
:@chcp 65001 1> NUL 2> NUL

:bat ���� ��η� �̵�
pushd "%~dp0"

netstat -na | findstr "127.0.0.1" | findstr "ESTABLISHED" 

ipconfig | findstr "IPv4"

:exit
pause
exit
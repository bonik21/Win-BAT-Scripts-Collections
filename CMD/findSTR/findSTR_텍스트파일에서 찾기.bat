@ECHO off
:utf-8 ���� ���� �� �ְ� ���ڵ� �߰�
:@chcp 65001 1> NUL 2> NUL

:bat ���� ��η� �̵�
pushd "%~dp0"

findstr /s "abc" *.txt

:exit
pause
exit
@ECHO off
:bat ���� ��η� �̵�
pushd "%~dp0"

CALL:ECHORED "������ �ؽ�Ʈ ���!"

:ECHORED
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red %1
:goto:eof

:exit
pause
exit
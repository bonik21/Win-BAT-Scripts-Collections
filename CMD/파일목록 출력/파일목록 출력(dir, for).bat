@ECHO off
:bat ���� ��η� �̵�
pushd "%~dp0"

TITLE ���ϸ����� ���� ���� ���� �̵�

echo âũ�� ����
MODE con cols=100 lines=40

:dir ��ɾ �̿��� ���ϸ�� ���
dir *.* /a-d /b

:for���� �̿��� ���ϸ�� ���
for /f tokens^=* %%i in ('where .:*')do echo/ Path: %%~dpi ^| Name: %%~nxi

:exit
pause
exit
@ECHO off
:bat ���� ��η� �̵�
pushd "%~dp0"

TITLE ���ϸ����� ���� ���� ���� �̵�

echo âũ�� ����
MODE con cols=100 lines=40

:���� ��� ���ϸ���� �ؽ�Ʈ�� ���
tree /f > ���ϸ��_������.txt

:Ư�� ��� ���ϸ���� �ؽ�Ʈ�� ��� (�����Է�)
set TARGET="C:\Windows\System32\drivers\etc"
tree %TARGET% /f > ���ϸ��_etc.txt

:Ư�� ��� ���ϸ���� �ؽ�Ʈ�� ��� (�����캯�� ��� e.g.: %userprofile%, %appdata% ��)
tree %USERPROFILE%\desktop /f > ���ϸ��_desktop.txt

:exit
pause
exit
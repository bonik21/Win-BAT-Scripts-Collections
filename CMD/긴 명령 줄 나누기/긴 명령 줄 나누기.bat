@ECHO off
:bat ���� ��η� �̵�
pushd "%~dp0"

TITLE cmdâ ����

echo âũ�� ����
MODE con cols=100 lines=40


:wmic logicaldisk get deviceid, volumename �̶�� ��ɾ �����ٷ� �Է�
wmic ^
logicaldisk ^
get deviceid, ^
volumename

:exit
pause
exit
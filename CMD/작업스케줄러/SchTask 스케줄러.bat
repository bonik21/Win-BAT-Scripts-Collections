@ECHO off
:bat ���� ��η� �̵�
pushd "%~dp0"

TITLE cmdâ ����

echo âũ�� ����
MODE con cols=100 lines=40

:Schtasks ��ɾ �̿��� �۾������ٷ� ó��

:����� �۾� ǥ��
Schtasks /Query

:�����ٷ� �۾� ���� (�ּ�ó���Ǿ� ����)
:schtasks /Run /TN �����ٷ��̸�

:�����ٷ� ���� (�ּ�ó���Ǿ� ����)
:schtasks /End /TN �����ٷ��̸�

:exit
pause
exit
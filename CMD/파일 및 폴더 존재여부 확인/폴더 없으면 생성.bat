@ECHO off
:bat ���� ��η� �̵�
pushd "%~dp0"
cd

:Ÿ��Ʋ �� âũ�� ����
TITLE ���Ϻ� ���� �ۼ� �� �̵�(���ĺ��� �ν�)
MODE con cols=100 lines=40

if not exist "ABCE" (md "ABCE" & echo ABCE ������ �����Ͽ����ϴ�.) else (echo "ABCE ������ �����մϴ�.")

:End
ECHO: ����Ű�� ���� ��ũ��Ʈ�� �����մϴ�.
pause >nul
exit
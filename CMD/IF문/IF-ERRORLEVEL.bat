@ECHO OFF
pushd "%~dp0"

:curl�� ȯ�溯���� ��ϵǾ����� Ȯ��
where curl

if %ERRORLEVEL% == 0 (
	echo:  OK
	echo:  ���͸� ���� ��ũ��Ʈ�� �����մϴ�.
	pause>nul
)
if %ERRORLEVEL% == 1 (
	echo:  ����� ó������ �ʾҽ��ϴ�. 
	echo:  ���͸� ���� ��ũ��Ʈ�� �����մϴ�.
	pause>nul
)
exit
@ECHO off
::bat������ �ִ� ��η� �̵�::
pushd "%~dp0"

echo ������ �⺻��(default) �����ϱ�
echo.
echo.
set /p "var01=������ �Է� (�⺻��:123) : " || SET "var01=123"

echo.
echo.
echo ���� : %var01%
echo:  ����Ű�� ���� ��ũ��Ʈ�� �����մϴ�.
pause >nul
@ECHO off
:bat ���� ��η� �̵�
pushd "%~dp0"

SetLocal EnableDelayedExpansion
echo [���ϸ�� ǥ��]
for /r %%f in (*.*) do (
set filename=%%f
echo !filename!
)
echo.

echo [���ϸ�� ǥ��(��� ����)]
for /r %%f in (*.*) do (
set filename=%%~nxf
echo !filename!
)
echo.

echo [���ϸ�� ǥ��(Ȯ���� ���� ~n)]
for /r %%f in (*.*) do (
set filename=%%~nf
echo !filename!
)
echo.

echo [���ϸ�� ǥ��(Ȯ���� ����2 ~nx�� 4���� ����)]
for /r %%f in (*.*) do (
set filename=%%~nxf
echo !filename:~0,-4!
)
echo.

echo [���ϸ�� ǥ��(Ȯ���ڸ� ǥ�� ~x)]
for /r %%f in (*.*) do (
set filename=%%~xf
echo !filename!
)
echo.

echo [���ϸ�� ǥ��(��ü��θ� ǥ�� ~dp)]
for /r %%f in (*.*) do (
set filename=%%~dpf
echo !filename!
)
echo.

echo [���ϸ�� ǥ��(����̺�� ǥ�� ~d)]
for /r %%f in (*.*) do (
set filename=%%~df
echo !filename!
)
echo.

echo [���ϸ�� ǥ��(��θ� ǥ�� ~p)]
for /r %%f in (*.*) do (
set filename=%%~pf
echo !filename!
)
echo.

:exit
pause
exit
@ECHO off
:bat ���� ��η� �̵�
pushd "%~dp0"

:For�� TOKENS���� (���� ����)
ECHO  [TOKENS ����]

For /F %%A IN (sample.txt) DO ECHO %%A
ECHO.

For /F "TOKENS=1" %%A IN (sample.txt) DO ECHO %%A
ECHO.

For /F "TOKENS=1-2" %%A IN (sample.txt) DO ECHO %%A %%B
ECHO.

For /F "TOKENS=1-3" %%A IN (sample.txt) DO ECHO %%A %%B %%C
ECHO.


:DELIMS ���� (������ ���� ����)
ECHO  [DELIMS ����]

For /F "TOKENS=1 DELIMS=��" %%A IN (sample.txt) DO ECHO %%A
ECHO.

For /F "TOKENS=1-2 DELIMS=��" %%A IN (sample.txt) DO ECHO %%A %%B
ECHO.

:exit
pause
exit
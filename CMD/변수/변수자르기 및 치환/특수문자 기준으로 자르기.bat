@ECHO off
:bat ���� ��η� �̵�
pushd "%~dp0"

TITLE cmdâ ����

echo âũ�� ����
MODE con cols=100 lines=40

:���� Ȯ���� (bat ���� ���ܸ� ����)
SET FILE-EXT=*.txt

: �ڸ��� �ʱ�(Ȯ���� ǥ��)
echo �ڸ��� �ʱ� (Ȯ���� ǥ��)
for /F "delims= eol=" %%A IN ('dir /A-D /B %FILE-EXT%') do echo %%~nxA
echo.
echo.

: �ڸ��� �ʱ� (Ȯ���� ��ǥ��)
echo �ڸ��� �ʱ� (Ȯ���� ��ǥ��)
for /F "delims= eol=" %%A IN ('dir /A-D /B %FILE-EXT%') do echo %%~nA
echo.
echo.

: .�� �������� �ڸ���
echo .�� �������� �ڸ���
for /F "delims=. eol=" %%A IN ('dir /A-D /B %FILE-EXT%') do echo %%~nA
echo.
echo.

: -�� �������� �ڸ���
echo -�� �������� �ڸ��� (Ȯ���� ������ ����)
for /F "delims=- eol=" %%A IN ('dir /A-D /B %FILE-EXT%') do echo %%~nxA
echo.
echo.

: -�� �������� �ڸ���
echo -�� �������� �ڸ��� (Ȯ���� �ȳ����� ����)
for /F "delims=- eol=" %%A IN ('dir /A-D /B %FILE-EXT%') do echo %%~nA
echo.
echo.

:exit
pause
exit
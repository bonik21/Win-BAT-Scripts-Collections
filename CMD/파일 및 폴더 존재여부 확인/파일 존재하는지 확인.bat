@ECHO off
:bat ���� ��η� �̵�
pushd "%~dp0"

:Ÿ��Ʋ �� âũ�� ����
TITLE ���Ϻ� ���� �ۼ� �� �̵�(���ĺ��� �ν�)
MODE con cols=100 lines=40

:Ȯ���ڰ� .mp4�� ������ �ִٸ� yes
IF EXIST "*.mp4" (echo yes) ELSE (echo no)

:EFG��� ������ �ִٸ� yes
IF EXIST EFG\NUL (echo yes) ELSE (echo no)

:EFG��� �����̳� ������ �ִٸ� yes
IF EXIST "EFG" (echo yes) ELSE (echo no)


:End
ECHO:  ����Ű�� ���� ��ũ��Ʈ�� �����մϴ�.
pause >nul
exit
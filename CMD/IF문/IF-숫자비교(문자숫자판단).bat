@ECHO off
:bat ���� ��η� �̵�
pushd "%~dp0"

:input_var
SET /P M=���� �Է� �� ����:

:check
SET /A X=%M%-1
if %M% == 0 goto number
if {%X%} == {-1} goto char
goto number

:char
echo %M%�� �����Դϴ�.
goto input_var

:number
IF %M% EQU 5 echo �Էµ� %M%��(��) 5�� �����ϴ�. && exit
IF %M% GTR 5 echo �Էµ� %M%��(��) 5���� Ů�ϴ�.
IF %M% LSS 5 echo �Էµ� %M%��(��) 5���� �۽��ϴ�.
echo.
goto input_var

:End
exit

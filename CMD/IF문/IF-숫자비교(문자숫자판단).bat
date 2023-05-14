@ECHO off
:bat 실행 경로로 이동
pushd "%~dp0"

:input_var
SET /P M=숫자 입력 후 엔터:

:check
SET /A X=%M%-1
if %M% == 0 goto number
if {%X%} == {-1} goto char
goto number

:char
echo %M%은 문자입니다.
goto input_var

:number
IF %M% EQU 5 echo 입력된 %M%은(는) 5와 같습니다. && exit
IF %M% GTR 5 echo 입력된 %M%은(는) 5보다 큽니다.
IF %M% LSS 5 echo 입력된 %M%은(는) 5보다 작습니다.
echo.
goto input_var

:End
exit

@ECHO off
:bat 실행 경로로 이동
pushd "%~dp0"

TITLE cmd창 제목

echo 창크기 설정
MODE con cols=100 lines=40

:변수 일부 출력
set num_var=0123456789
echo %num_var%               //var 변수 출력
echo %num_var:123=abc%               //var 변수의 "123"을 "abc"로 바꿔 출력
echo %num_var:123=%                  //var 변수의 "123"을 지워서 출력
echo %num_var:~3,4%                     //var 변수의 네번째 부터 4개 출력
echo %num_var:~-5%                    //var 변수의 맨뒤에서 부터 5개 출력
echo %num_var:~0,2%                       //var 변수의 0번째 부터 2개 출력
echo %num_var:~0,-2%                 //var 변수의 0번째 부터 출력하는데 맨뒤 2개 빼고 출력
echo %num_var:~-2,5%                       //var 변수의 맨뒤 2번째 부터 3개 출력
echo %num_var:~-2,-3%                         //var 변수의 맨뒤 2번째 부터 3개 빼고 출력

echo.
echo.

:따옴표(") 제거 / for 내의 변수에서는%var를 %~var로 표시하면 됨
set Test_var="microsoft"
set Result_var=%Test_var:"=%
echo %Test_var%
echo %Result_var%
echo.
echo.

:따옴표 제거 (%하나인 변수)
echo 따옴표 제거 (for문, 전달받은 변수 %1일 때는 %~1)
for /F %%A IN (test.file-US.txt) do echo %%A
echo.
for /F %%A IN (test.file-US.txt) do echo %%~A
echo.
echo.


:숫자 및 특수문자(-) 제거
set Test_var=ABCD-000475
set Result_var=%Test_var:0=%
set Result_var=%Result_var:1=%
set Result_var=%Result_var:2=%
set Result_var=%Result_var:3=%
set Result_var=%Result_var:4=%
set Result_var=%Result_var:5=%
set Result_var=%Result_var:6=%
set Result_var=%Result_var:7=%
set Result_var=%Result_var:8=%
set Result_var=%Result_var:9=%
set Result_var=%Result_var:-=%
echo %Test_var%
echo %Result_var%
echo.
echo.

:exit
pause
exit
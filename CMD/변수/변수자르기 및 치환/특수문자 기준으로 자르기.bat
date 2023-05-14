@ECHO off
:bat 실행 경로로 이동
pushd "%~dp0"

TITLE cmd창 제목

echo 창크기 설정
MODE con cols=100 lines=40

:적용 확장자 (bat 파일 제외를 위해)
SET FILE-EXT=*.txt

: 자르지 않기(확장자 표시)
echo 자르지 않기 (확장자 표시)
for /F "delims= eol=" %%A IN ('dir /A-D /B %FILE-EXT%') do echo %%~nxA
echo.
echo.

: 자르지 않기 (확장자 미표시)
echo 자르지 않기 (확장자 미표시)
for /F "delims= eol=" %%A IN ('dir /A-D /B %FILE-EXT%') do echo %%~nA
echo.
echo.

: .을 기준으로 자르기
echo .을 기준으로 자르기
for /F "delims=. eol=" %%A IN ('dir /A-D /B %FILE-EXT%') do echo %%~nA
echo.
echo.

: -을 기준으로 자르기
echo -을 기준으로 자르기 (확장자 나오게 설정)
for /F "delims=- eol=" %%A IN ('dir /A-D /B %FILE-EXT%') do echo %%~nxA
echo.
echo.

: -을 기준으로 자르기
echo -을 기준으로 자르기 (확장자 안나오게 설정)
for /F "delims=- eol=" %%A IN ('dir /A-D /B %FILE-EXT%') do echo %%~nA
echo.
echo.

:exit
pause
exit
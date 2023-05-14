@ECHO off

:스크립트 파일 경로로 이동 1 (드라이브 변경 O)
pushd "%~dp0"
cd

:스크립트 파일 경로로 이동 2 (드라이브 변경 X)
c:
cd %~dp0
cd

:스크립트 파일 경로로 이동 2 (드라이브 변경 O)
c:
%~d0
cd %~dp0
cd

echo:  엔터키를 눌러 스크립트를 종료합니다.
pause >nul
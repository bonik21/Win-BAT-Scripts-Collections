@ECHO OFF
pushd "%~dp0"

:check_tcp_port
echo. 
echo. 
echo 현재 %ComputerName%에서 사용중인 TCP 포트는 다음과 같습니다.
netstat -anp tcp | find "127.0.0.1"

pause
exit
@ECHO OFF
pushd "%~dp0"

:check_tcp_port
echo. 
echo. 
echo ���� %ComputerName%���� ������� TCP ��Ʈ�� ������ �����ϴ�.
netstat -anp tcp | find "127.0.0.1"

pause
exit
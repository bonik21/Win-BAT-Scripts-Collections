@echo off
: for /f "delims=" %%A in ('ipconfig 2^>^&1 ^| find "IPv4"') do (set LocalIP=%%A)
: @echo ���� �����Ǵ� %LocalIP:~31,15%

for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set LocalIP=%%a
echo ���� �����Ǵ� %LocalIP%

for /f "delims=" %%A in ('nslookup myip.opendns.com resolver1.opendns.com 2^>^&1 ^| find "Address"') do (set PublicIP=%%A)
echo �ܺ� �����Ǵ� %PublicIP:~10,15%
pause
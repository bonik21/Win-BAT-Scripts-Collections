@echo off
: for /f "delims=" %%A in ('ipconfig 2^>^&1 ^| find "IPv4"') do (set LocalIP=%%A)
: @echo 내부 아이피는 %LocalIP:~31,15%

for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set LocalIP=%%a
echo 내부 아이피는 %LocalIP%

for /f "delims=" %%A in ('nslookup myip.opendns.com resolver1.opendns.com 2^>^&1 ^| find "Address"') do (set PublicIP=%%A)
echo 외부 아이피는 %PublicIP:~10,15%
pause
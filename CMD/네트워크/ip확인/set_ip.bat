@echo off
@echo [���ξ�����]>> config.ini
for /f "delims=" %%A in ('ipconfig 2^>^&1 ^| find "IPv4"') do (set LocalIP=%%A)

echo LocalIP=%LocalIP:~31,15%>> config.ini
echo.>> config.ini
echo ���� �����Ǵ� %LocalIP:~31,15%

@echo [�ܺξ�����]>> config.ini
for /f "delims=" %%A in ('nslookup myip.opendns.com resolver1.opendns.com 2^>^&1 ^| find "Address"') do (set PublicIP=%%A)

echo PublicIP=%PublicIP:~10,15%>> config.ini
echo.>> config.ini
echo �ܺ� �����Ǵ� %PublicIP:~10,15%
pause
@echo off
rem SET WEBFLODER=d:\www\nodesite

rem chdir /d %WEBFLODER%
set /p password=Please input password: 
echo forever starting...
call forever -p . -a -l ./logs/access.log -e ./logs/error.log start --uid "proxy" local.js -s my-shadow1.herokuapp.com -l 1080 -m aes-256-cfb -k %password% -p 80 --log-level error
pause
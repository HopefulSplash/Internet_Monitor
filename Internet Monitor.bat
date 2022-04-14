@mode con: cols=63 lines=24
@cls
@echo off 
@Title Internet Checking Protocol
TIMEOUT /T 1 > nul
:start
@cls
echo.
echo [33m==============================================================[0m 
echo [33m                 Checking Internet Connection                 [0m
echo [33m==============================================================[0m 
@Ping bing.com -n 1 -w 1000

IF %ERRORLEVEL% EQU 0 (
    SET internet=Connected to the internet.
echo. 
echo [32m==============================================================[0m 
echo [32m                 Connected to the internet.                   [0m
echo [32m==============================================================[0m 
echo.
) ELSE (
    SET internet=Not connected to the internet.
echo. 
echo [31m==============================================================[0m 
echo [31m                 Not connected to the internet                [0m
echo [31m==============================================================[0m 
echo.
echo [31m==============================================================[0m 
echo [31m                 Restarting interent connection               [0m
echo [31m==============================================================[0m 
echo.
call start  "" "C:\Users\Alpha-Worker\Desktop\Startup Stuff\A.bat"

)

TIMEOUT /T 300 > nul

goto start
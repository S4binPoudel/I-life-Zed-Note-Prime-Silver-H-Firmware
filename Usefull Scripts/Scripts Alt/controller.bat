@echo off

REM ====== Choose action ======
REM set option=disable   → disables both ALT keys
REM set option=enable    → enables both ALT keys
set option=disable

REM ====== Define log file ======
set logfile=C:\Scripts\alt_control_log.txt

if "%option%"=="disable" (
    reg import "C:\Scripts\disable.reg" >nul 2>&1
    echo [%date% %time%] ALT keys DISABLED >> "%logfile%"
) else (
    reg import "C:\Scripts\enable.reg" >nul 2>&1
    echo [%date% %time%] ALT keys ENABLED >> "%logfile%"
)

exit

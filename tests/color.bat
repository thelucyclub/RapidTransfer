@Echo Off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
call :colorEcho cc "--------------------------------------------"
call :colorEcho ba "This is colored green with a aqua background!"
call :colorEcho ab "This is colored aqua with a green background!"
call :colorEcho cc "--------------------------------------------"
echo.
echo.
echo.
echo.
pause
exit
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
echo.
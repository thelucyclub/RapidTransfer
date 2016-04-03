@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
TITLE iServer Beta Build #13
call :colorEcho 7f "[INFO] Starting Server on 127.0.0.1:19132"
call :colorEcho 7f "[INFO] Loading assets..."
ping 192.0.2.2 -n 1 -w 5000 > nul
call :colorEcho 7b "[NOTICE] Level saving not yet implented. Neither is player data saving, closing the server delets everything."
if exist config\server.motd (
	call :colorEcho 7f "[INFO] Loading MOTD files..."
	
) else (
	call :colorEcho 7f "[CRITICAL] MOTD not found, generating new key..."
	
	> server.motd
)
if exist config\join.msg (
	call :colorEcho 7f "[INFO] Loading join message..."
	
) else (
	call :colorEcho 7c "[CRITICAL] No join message found, generating new key..."
	
	> join.msg
)
call :colorEcho 7f "[INFO] Loading plugins..."

if exist task.sci (
	call :colorEcho 7f "[INFO] Loading packaged installation file..."
	
) else (
	call :colorEcho 7e "[WARNING] Non-packaged server installation detected. Not suitable for a production server."
	
)
echo [INFO] Loading plugins...

echo ----------[ Addon Manager ]-----------
echo {NOTICE} Only official addons
echo work at the moment!
echo --------------------------------------
if exist addons\MCPETransfer.jfs (
	if exist addons\patches\mct.patch (
		echo [MCPETransfer] MCPETransfer loaded and ready!
	) else (
		echo [CRITICAL] bootstrapProcess failed for loading addon process of MCPETransfer
		echo [MCPETransfer] An error ocurred and the process canceled
)
	
) else (
	echo [***] No addons to load! [***]
)
echo [THREAD] Server open for buisness on localhost:19132
wait
goto :loop

:loop
ping 192.0.2.2 -n 1 -w 600000 > nul
goto :loop

:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
echo.
@echo off
TITLE iServer Beta Build #13
echo [INFO] Starting Server on 127.0.0.1:19132
echo [INFO] Loading assets...
ping 192.0.2.2 -n 5 > nul
echo [NOTICE] Level saving not yet implented. Neither is player data saving, closing the server delets everything.
if exist server.conf (
	echo [INFO] Loading server.conf files...
	
) else (
	echo [CRITICAL] server.conf not found, generating new key...> server.motd
)
if exist proxySetup.conf (
	echo [INFO] Loading proxySetup.conf message...
	
) else (
	echo [CRITICAL] proxySetup.conf not found, generating new key...> join.msg
)
echo [INFO] Loading plugins...

if exist task.sci (
	echo [INFO] Loading packaged task file...
	
) else (
	echo [WARNING] Non-packaged server installation detected. Not suitable for a production server.
	
)
echo [INFO] Loading plugins...

echo ----------[ Addon Manager ]-----------
echo Loading addons...
if exist addons\MCPETransfer.jfs (
	if exist addons\patches\mct.patch (
		echo [MCPETransfer] MCPETransfer loaded and ready!
	) else (
		echo [CRITICAL] bootstrapProcess failed for loading addon process of MCPETransfer
		echo [MCPETransfer] An error ocurred and the process canceled
)
	
) else (
	echo No addons to load!
)
echo ----------[ Addon Manager ]-----------
echo [THREAD] ThreadWork Finished!
goto :loop
:loop
set /p CMD="> "
if %CMD% == help (
echo --- Command Help ---
echo help - Shows a list of commands.
echo sudo - Initiates 'sudo' mode [EXPIERIMENTAL]
echo [NOTICE] Commands have not yet been implented!
) else if %CMD% == sudo (
echo [ALERT] Attempting to 'sudo' a command // Doesn't seem to be working.
type /p SUDO_CMD="$ "
ping 127.8.0.1 -n 1>nul
%SUDO_CMD%
) else (
echo [INFO] Failed to execute command
)
goto :loop
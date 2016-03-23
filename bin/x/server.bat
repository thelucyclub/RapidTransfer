@echo off
TITLE iServer Beta Build #13
echo [INFO] Starting Server on 127.0.0.1:19132
echo [INFO] Loading assets...
ping 192.0.2.2 -n 1 -w 5000 > nul
call :colorEcho 0b [NOTICE] Level saving not yet implented. Neither is player data saving, closing the server delets everything.
if exist config\server.motd (
	echo [INFO] Loading MOTD files...
	
) else (
	echo [CRITICAL] MOTD not found, generating new key...
	
	> server.motd
)
if exist config\join.msg (
	echo [INFO] Loading join message...
	
) else (
	echo [CRITICAL] No join message found, generating new key...
	
	> join.msg
)
echo [INFO] Loading plugins...

if exist $task (
	echo [INFO] Loading packaged task file...
	
) else (
	echo [WARNING] Non-packaged server installation detected. Not suitable for a production server.
	
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
goto :loop
ping 192.0.2.2 -n 1 -w 600000 > nul
:loop

goto :loop
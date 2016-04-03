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
echo [THREAD] Preparing to load external process
ping 9.0.9.0 -n 2 > nul
cd ..
cd ..
cd ..
start bin\x\j\start.cmd -t "iServer - MCPE Server Software"
ping 1.2.3.4:0978 -n 10 > nul
exit
goto :loop
ping 192.0.2.2 -n 1 -w 3 > nul
:loop

goto :loop
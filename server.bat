@echo off
if not exist data\server\wizard (
echo.
echo                          Welcome to iServer!
echo               Website: https://github.com/iServer-Project
echo.
echo.
#goto :setup
)
TITLE iServer Beta Build #13
echo [INFO] Starting Server on 127.0.0.1:19132
echo [INFO] Loading assets...
ping 192.0.2.2 -n 5 > nul
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
goto :loop2
:loop
set /p CMD="> "
if %CMD% == "help" (
echo [INFO] Commands are not implented yet!
)
goto :loop
:loop2
set %memory% == %random% / 20
cd data
cd server
type 2 == %RAM%
TITLE iServer [1 THREADS][%memory% / %RAM%]
ping 9.8.7.6:9076 -n 2.0%random%>nul
#:setup
echo Welcome to iServer!
echo There will be a quick set-up wizard. Would you like to skip it? [y/N]
set /p tmp=""
if %tmp% == "y" (
cd data
cd server
echo ~!@#$%^&*()_+{}|:"<>?`1234567890-=[]\;',./qwertyuiopasdfghjklzxcvbnm > WIZARD
echo %SKIP_WIZARD%==TRUE >> WIZARD
exit
)
echo [*] What is the maximum amount of players aloud? [20]
set /p tmp=""
if %tmp% == "" (
set %tmp% == "20"
echo %tmp% > 1
)
echo [*] RAM is the max amount of memory iServer will use. What value would you like to assign to RAM? [128]
set /p tmp=""
if %tmp% == "" (
set %tmp% == "128"
echo %tmp% > 2
)
)
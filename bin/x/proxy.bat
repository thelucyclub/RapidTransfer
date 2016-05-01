@echo off
TITLE iServer Proxy v1.09b
echo INITIALIZING...
ping 9.9.9.9 -n 2.5>nul
echo LOADING SRC\PROXY\MAIN.SCI
echo LOADING SRC\PROXY\TASKLISTENER\MAIN.SCI
ping 9.9.9.9 -n 3>nul
echo LOADING SOURCES...
ping 6.7.8.9 -n 1>nul
echo DONE!
echo.
if exist HOST_1 (
echo Loading hosts...
) else (
echo PLEASE SET UP HOSTS
type /p HOST1_IP="Host 1 IP: "
type /p HOST1_PORT="Host 1 Port: "
type /p HOST2_IP="Host 2 IP: "
type /p HOST2_PORT="Host 2 Port: "
type /p HOST3_IP="Host 3 IP: "
type /p HOST3_PORT="Host 3 Port: "
type /p HOST4_IP="Host 4 IP: "
type /p HOST4_PORT="Host 4 Port: "
type /p HOST5_IP="Host 5 IP: "
type /p HOST5_PORT="Host 5 Port: "
echo ALL LOCATIONS:
echo "%HOST1_IP%:%HOST1_PORT%"
echo "%HOST2_IP%:%HOST2_PORT%"
echo "%HOST3_IP%:%HOST3_PORT%"
echo "%HOST4_IP%:%HOST4_PORT%"
echo "%HOST5_IP%:%HOST5_PORT%"
echo.
echo Writing all data to files...
if exist data\ (
) else (
echo Creating directory...
mkdir data
)
echo %HOST1_IP%:%HOST1_PORT%>HOST_1
echo %HOST2_IP%:%HOST2_PORT%>HOST_2
echo %HOST3_IP%:%HOST3_PORT%>HOST_3
echo %HOST4_IP%:%HOST4_PORT%>HOST_4
echo %HOST5_IP%:%HOST5_PORT%>HOST_5
echo.
)
echo Checking hosts...
echo.
echo Checking 1...
ping %HOST1_IP%:%HOST1_PORT%
echo Checking 2...
ping %HOST2_IP%:%HOST2_PORT%
echo Checking 3...
ping %HOST3_IP%:%HOST3_PORT%
echo Checking 4...
ping %HOST4_IP%:%HOST4_PORT%
echo Checking 5...
ping %HOST5_IP%:%HOST5_PORT%
echo.
echo Done!
pause
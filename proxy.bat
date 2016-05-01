@echo off
TITLE iServer Proxy v1.09b
echo INITIALIZING...
ping 9.9.9.9 -n 2.5>nul
echo LOADING SRC\PROXY\MAIN.SCI
echo LOADING SRC\PROXY\TASKLISTENER\MAIN.SCI
ping 9.9.9.9 -n 3>nul
echo LOADING SOURCES...
ping 6.7.8.9 -n 2>nul
echo DONE!
echo.
echo PLEASE SET UP HOSTS
echo Host1
set /p HOST1_IP=IP:
set /p HOST1_PORT=Port:
echo Host2
set /p HOST2_IP=IP:
set /p HOST2_PORT=Port:
echo Host3
set /p HOST3_IP=IP:
set /p HOST3_PORT=Port:
echo Host4
set /p HOST4_IP=IP:
set /p HOST4_PORT=Port:
echo Host5
set /p HOST5_IP=IP:
set /p HOST5_PORT=Port:
echo ALL LOCATIONS:
echo "%HOST1_IP%:%HOST1_PORT%"
echo "%HOST2_IP%:%HOST2_PORT%"
echo "%HOST3_IP%:%HOST3_PORT%"
echo "%HOST4_IP%:%HOST4_PORT%"
echo "%HOST5_IP%:%HOST5_PORT%"
echo.
echo Writing all data to files...
cd data
cd proxy
echo %HOST1_IP%:%HOST1_PORT%>HOST_1
echo %HOST2_IP%:%HOST2_PORT%>HOST_2
echo %HOST3_IP%:%HOST3_PORT%>HOST_3
echo %HOST4_IP%:%HOST4_PORT%>HOST_4
echo %HOST5_IP%:%HOST5_PORT%>HOST_5
cd ..
cd ..
echo.
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
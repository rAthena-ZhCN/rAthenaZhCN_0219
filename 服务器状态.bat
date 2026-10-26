@echo off
chcp 936 >nul
echo ===== rAthena 服务器状态 =====
tasklist /FI "IMAGENAME eq login-server.exe" | findstr /I "login-server"
tasklist /FI "IMAGENAME eq char-server.exe" | findstr /I "char-server"
tasklist /FI "IMAGENAME eq map-server.exe" | findstr /I "map-server"
echo.
echo ===== 端口 =====
netstat -ano | findstr /R /C:":6900 .*LISTENING" /C:":6121 .*LISTENING" /C:":5121 .*LISTENING"
echo.
echo 如果三个进程都在，不要重复运行 runserver。
pause

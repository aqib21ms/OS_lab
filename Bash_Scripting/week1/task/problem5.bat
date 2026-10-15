@echo off

set /p "std_name=Enter Student Name: "
set /p "reg_num=Enter Registration Number: "
set /p "semester=Enter Semester: "

echo.

mkdir "%reg_num%" 2>nul
cd "%reg_num%"

(
    echo Student Name: %std_name%
    echo Registration Number: %reg_num%
    echo Semester: %semester%
) > student.txt

mkdir Backup 2>nul
copy student.txt Backup\ >nul

if exist "Backup\student.txt" (
    echo [SUCCESS] Backup Successful!
) else (
    echo [ERROR] Backup Failed!
)

echo.
echo Complete Directory Structure:
cd ..
tree "%reg_num%" /F /A
pause
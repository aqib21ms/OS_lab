@echo off

REM Ask user for course name
set /p course=Enter course name: 

REM Create main course directory
mkdir "%course%"

REM Move into main directory
cd "%course%"

REM Create subdirectories
mkdir Lectures
mkdir Labs
mkdir Assignments
mkdir Backup

REM Create course information
echo Course Name: %course% > course_info.txt

REM Copy information file to backup
copy course_info.txt Backup

REM Display directory structure
tree /f

REM Display completion message
echo.
echo Course workspace created successfully.

pause
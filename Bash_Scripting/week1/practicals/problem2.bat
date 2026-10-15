@echo off

set /p name=Enter Name: 
set /p reg=Enter Registration Number: 

echo Name: %name% > student.txt
echo Registration Number: %reg% >> student.txt

type student.txt

pause
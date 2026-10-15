@echo off

if exist report.txt (

    if not exist Backup mkdir Backup

    copy report.txt Backup

    echo Report backup completed.

) else (

    echo ERROR: report.txt does not exist.

)

pause
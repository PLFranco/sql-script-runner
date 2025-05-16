@echo off
@echo Executing Multiple SQL Scripts

:: Initialize counter for executed scripts
set count=0

:: Check if sqlcmd is available
where sqlcmd >nul 2>nul
if errorlevel 1 (
    echo sqlcmd is not installed or not in the system PATH.
    exit /b 1
)

:: Loop through each .sql file and execute
for %%C in (*.sql) do (
    echo Executing script: %%C
    sqlcmd -S "(localdb)\MSSQLLocalDB" -d EHRDB -E -i "%%C"
    
    if errorlevel 1 (
        echo Error executing script %%C >> script_execution.log
        echo Script %%C failed with an error.
        exit /b 1
    )
    
    :: Increment the script counter after successful execution
    set /a count+=1
)

:: Display the number of scripts executed
echo.
echo %count% script(s) executed successfully.

PAUSE

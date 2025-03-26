@echo off

:: Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo Python is not installed or not added to PATH.
    exit /b
)

:: Create a virtual environment in the "venv" folder
echo Creating virtual environment...
python -m venv .venv

:: Activate the virtual environment
echo Activating virtual environment...
call .venv\Scripts\activate

:: Install requirements
if exist requirements.txt (
    echo Installing requirements...
    pip install -r requirements.txt
) else (
    echo requirements.txt not found. Skipping package installation.
)

:: Keep the command prompt open
echo Virtual environment setup complete.
pause
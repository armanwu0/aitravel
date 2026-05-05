@echo off
echo.
echo ================================================
echo    SmartTrip AI — Local Development Server
echo    Developed by Arman Ansari
echo ================================================
echo.

echo [Step 1/2] Launching Django API Server on port 8000...
start cmd /k "cd /d %~dp0 && .venv\Scripts\python.exe manage.py runserver 8000"
timeout /t 3 /nobreak >nul

echo [Step 2/2] Launching React Frontend on port 3000...
start cmd /k "cd /d %~dp0frontend && npm start"
timeout /t 5 /nobreak >nul

echo.
echo ================================================
echo  ✅ SmartTrip AI is starting up!
echo.
echo  API Server : http://localhost:8000/api/v1/
echo  Frontend   : http://localhost:3000
echo ================================================
echo.
pause

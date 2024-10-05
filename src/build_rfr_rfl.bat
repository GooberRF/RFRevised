@echo off

echo Building rfr_rfl.vpp...

:: clear build index file first
> .\_tools\_build_rfr_rfl.txt echo.

(for /f "delims=" %%i in ('dir /b .\rfl ^| find /v "~.rfl"') do (
    @echo rfl\%%i >> .\_tools\_build_rfr_rfl.txt
)) 

.\_tools\ccrunch.exe rfr_rfl.vpp .\_tools\_build_rfr_rfl.txt > nul
move .\rfr_rfl.vpp ..\rfr_rfl.vpp > nul

echo Finished building rfr_rfl.vpp.
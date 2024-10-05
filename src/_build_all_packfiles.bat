@echo off

echo Building all data packfiles...

echo.
call .\build_rfr_tbl.bat
echo.
call .\build_rfr_tex.bat
echo.
call .\build_rfr_mes.bat
echo.

echo Build complete!
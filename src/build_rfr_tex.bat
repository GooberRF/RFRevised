@echo off

echo Building rfr_tex.vpp...

(for /f %%i in ('dir /b .\tex') do @echo tex\%%i) > .\_tools\_build_rfr_tex.txt
.\_tools\ccrunch.exe rfr_tex.vpp .\_tools\_build_rfr_tex.txt > nul
move .\rfr_tex.vpp ..\rfr_tex.vpp > nul

echo Finished building rfr_tex.vpp.
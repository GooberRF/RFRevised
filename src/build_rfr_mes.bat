@echo off

echo Building rfr_mes.vpp...

(for /f %%i in ('dir /b .\mes') do @echo mes\%%i) > .\_tools\_build_rfr_mes.txt
.\_tools\ccrunch.exe rfr_mes.vpp .\_tools\_build_rfr_mes.txt > nul
move .\rfr_mes.vpp ..\rfr_mes.vpp > nul

echo Finished building rfr_mes.vpp.
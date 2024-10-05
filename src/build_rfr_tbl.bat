@echo off

echo Building rfr_tbl.vpp...

(for /f %%i in ('dir /b .\tbl') do @echo tbl\%%i) > .\_tools\_build_rfr_tbl.txt
.\_tools\ccrunch.exe rfr_tbl.vpp .\_tools\_build_rfr_tbl.txt > nul
move .\rfr_tbl.vpp ..\rfr_tbl.vpp > nul

echo Finished building rfr_tbl.vpp.
@echo off


if not "%~0"=="%~dp0.\%~nx0" (
     start /min cmd /c,"%~dp0.\%~nx0" %*
     exit
)
::for %%v in (%*) do 
"C:\Program Files (x86)\Microsoft Office\Office14\EXCEL.EXE" %1
::%%v
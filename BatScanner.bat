@echo off
color cb
title BatScanner Antivirus
cls
echo ===============
echo [ Batch-Master]
echo ===============
echo If There's no message, You are protected.
set /p a=Enter a batch file to scan: 
for /f %%x in (
'findstr /i /m "virus r.i.p byebye HaHaHa Hacked Hack" %a%.bat'
) do (
if /i %%x equ %a%.bat (
for /f %%z in (
'findstr /i /b /m "tskill del copy shutdown ipconfig ren reg" %a%.bat'
) do (
if /i %%z equ %a%.bat (
cls 
echo Virus Was Detected!!
del %a%.bat
echo %a% was deleted by BatScanner antivirus....
pause >nul
)
)
)
)
pause >nul
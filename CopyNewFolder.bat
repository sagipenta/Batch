echo on
::robocopy \\tres-pkg\tres-pkg\pkg\TresJ_Test\PS4\ C:\Users\saishige\Desktop\PS4 *.txt *.gp4 *.pkg

@echo off
setlocal EnableDelayedExpansion

set newFolder=C:\Workspace\Builds\HighMoon\%date%
echo %newFolder%
md %newFolder%
H:

for /F %%a in ('dir /B /A:D /O-D') do (
set fname=%%a
robocopy !fname! %newFolder% /s /e
GOTO BREAK1
)

:BREAK1

set newFolder=C:\Workspace\Builds\ShadowWarrior\%date%
echo %newFolder%
md %newFolder%
S:

for /F %%a in ('dir /B /A:D /O-D') do (
set fname=%%a
robocopy !fname! %newFolder% /s /e
GOTO BREAK2
)

:BREAK2

pause

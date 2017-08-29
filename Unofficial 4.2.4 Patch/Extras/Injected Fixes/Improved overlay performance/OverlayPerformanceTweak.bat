@echo off

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
color 0A
echo This will patch your Unofficial Patch for Metro
echo It will make the Overlay along with some other features
echo alot faster and smoother, will improve fps in games like PUBG

:ready
set /P c=Are you ready to start the patch, of the patch? [Yes/No] Response: 
if /I "%c%" EQU "Yes" goto :beginpatch
if /I "%c%" EQU "No" goto :ready
if /I "%c%" EQU "" goto :ready

:beginpatch
echo Detecting Steam/skins location
tree
echo C:\Program Files (x86)\Steam\skins
echo Patching (Overlay, Menucon, SystemUI, Bootstrapper, and Webhelper.
echo Overwriting DLL Files
echo C:\Program Files (x86)\Steam\v8.dll
echo C:\Program Files (x86)\Steam\video.dll
echo C:\Program Files (x86)\Steam\tier0_s.dll
echo C:\Program Files (x86)\Steam\tier0_s64.dll
echo -----------------------------------------
echo hashing dll and css files
echo finished
pause
echo refreshing
echo %random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%
echo executed % random % as a mode to refresh cache
echo Done!
pause
exit
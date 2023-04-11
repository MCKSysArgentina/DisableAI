@echo off
echo Administrative permissions required. Detecting permissions...
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Success: Administrative permissions confirmed.
    taskkill /F /IM ai.exe
    cd %ProgramFiles%\Microsoft Office\root\vfs\ProgramFilesCommonX86\Microsoft Shared\OFFICE16\
    del ai.dll.bak
    del ai.exe.bak
    del aimgr.exe.bak
    copy /y ai.dll ai.dll.bak
    copy /y ai.exe ai.exe.bak
    copy /y aimgr.exe aimgr.exe.bak
    del ai.dll
    del ai.exe
    del aimgr.exe
    cd %ProgramFiles%\Microsoft Office\root\vfs\ProgramFilesCommonX64\Microsoft Shared\OFFICE16\
    del ai.dll.bak
    del ai.exe.bak
    del aimgr.exe.bak
    copy /y ai.dll ai.dll.bak
    copy /y ai.exe ai.exe.bak
    copy /y aimgr.exe aimgr.exe.bak
    del ai.dll
    del ai.exe
    del aimgr.exe
) else (
    echo Error: Administrative permissions required.
)
pause > nul

@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion

set "file=data.txt"

:mainLoop
echo.
set /p "userInput=You: "
if not defined userInput goto :mainLoop

for /f %%A in ('find /c /v "" ^< "%file%"') do set "lines=%%A"

set /a "randomLine=(%random% %% %lines%) + 1"

set "counter=0"
for /f "usebackq delims=" %%A in ("%file%") do (
    set /a "counter+=1"
    if !counter! equ %randomLine% (
        set "response=EmilioBot 1.0: %%A"
        echo.
	echo !response!
    )
)

goto :mainLoop

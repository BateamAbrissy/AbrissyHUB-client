@echo off
mode 40 , 10

for /f "skip=1 delims=" %%i in ('wmic cpu get ProcessorId') do (
    for /f "delims=" %%j in ("%%i") do set "hwid=%%j"
)

echo your HWID: [31m%hwid%[0m
pause >nul
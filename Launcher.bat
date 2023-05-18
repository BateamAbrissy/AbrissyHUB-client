::configuration
setlocal enabledelayedexpansion
@echo off
title AbrissyHUB /---------------/ AbrissyBatchStudio
cd assets
color e
cls

::----------------- STATUS CHECK 

set "file_path=list.txt"  REM ŚCIEŻKA DO PLIKU TEKSTOWEGO Z HWID

set "is_banned="

REM Pobranie HWID komputera
for /f "skip=1 tokens=2 delims==" %%i in ('wmic cpu get ProcessorId /value') do (
    set "cpu_id=%%i"
)

)

REM Sprawdzenie, czy HWID znajduje się w pliku
for /f "usebackq delims=" %%i in ("%file_path%") do (
  if "%%i"=="%cpu_id%" (
    set "is_banned=1"
    goto :banned
  )
)

REM Jeżeli HWID nie znajduje się w pliku
goto not_banned
pause

:banned
echo                                        [31mYou are pernamently banned from this software[0m 
echo [37mReason: You are suspected of trying to crack AbrissyHUB if any person gave you their key then they will lose access to  AbrissyHUB after some time and if you managed to get the key in any other way then your hwid will be banned forever [0m
echo. 
echo                                                Find out more:[36m discord.gg/AbrissyHUB [0m
echo.
pause >nul 
exit


:not_banned

REM Definicja opcji
set "option1=RemoteShutdown"
set "option2=WifiBruteForce"
set "option3=ConnectedUsersList"
set "option4=WifiFileTransfer"
set "option5=Developer mode"

REM Ustawienie początkowego indeksu opcji
set "selectedOption=1"

REM Główna pętla skryptu
:main
cls
type logo.txt
echo.
echo.
echo Choice option:
for /L %%i in (1,1,5) do (
    if !selectedOption! equ %%i (
        echo ^> [%%i] !option%%i!
    ) else (
        echo   [%%i] !option%%i!
    )
)

REM Odczytanie klawisza
set "key="
for /F "usebackq delims=" %%A in (`xcopy /L /W "%~f0" "%~f0" 2^>NUL`) do if not defined key set "key=%%A"
set "key=!key:~-1!"

REM Logika obsługi klawiszy
if "!key!"=="s" (
    set /a "selectedOption+=1"
    if !selectedOption! gtr 5 set "selectedOption=1"
) else if "!key!"=="w" (
    set /a "selectedOption-=1"
    if !selectedOption! lss 1 set "selectedOption=5"
) else if "!key!"=="e" (
    goto :select
)

goto :main

REM Wybór opcji
:select
if !selectedOption! equ 1 (
    echo Wybrano opcję 1
) else if !selectedOption! equ 2 (
    echo Wybrano opcję 2
) else if !selectedOption! equ 3 (
    goto o3
) else if !selectedOption! equ 4 (
    echo Wybrano opcję 4
) else if !selectedOption! equ 5 (
    goto o5 
)


:o1
:o2 
:o3 
:o4
:o5 
cls
type logo.txt
echo.
echo.
set /p "password=Key:[31m"[0m 
if %password%==hej goto checkhwid
:checkhwid 
set "valid_hwid=BFEBFBFF00"  REM Wprowadź poprawne HWID tutaj

for /f "skip=1 tokens=2 delims==" %%i in ('wmic cpu get ProcessorId /value') do (
    set "cpu_id=%%i"
)

if "%cpu_id%"=="%valid_hwid%" (
    goto :suc
) else (
    goto :not_suc
)

:suc
echo goto developer
pause
exit

:not_suc
echo                                        [31mYou are pernamently banned from this software[0m 
echo [37mReason: You are suspected of trying to crack AbrissyHUB if any person gave you their key then they will lose access to  AbrissyHUB after some time and if you managed to get the key in any other way then your hwid will be banned forever [0m
echo. 
echo                                                Find out more:[36m discord.gg/AbrissyHUB [0m
echo                                                            Ban ID: #001
pause 

:developer
cls
type logo.txt
echo.
echo.
echo Ratting methods? - 
echo How to login to session id?
echo How to create RAT? 
echo How to create webhook 
echo Best way to dont be ratted
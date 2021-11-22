@echo off
mode 15,15
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
cls

::INFORMATION::
::Use https://textfancy.com/multiline-text-art/ to make the ascii art text
::Use https://lingojam.com/TextSymbols for the fonts
::Use https://pastebin.com/tQc5VjQk for documentation on which fonts/symbols work
chcp 65001 >nul
set ver=1
title                              ♦ ♣ ♠ ♥ SymbolGUI v%ver% ♥ ♠ ♣ ♦

:HomeGUI
color 05
mode 75,17
chcp 65001 >nul
echo Current Version: %ver%                                    ♥ Made by Elf#6622 ♥
echo.
echo.                  ╔═══╗         ╔╗      ╔╗ ╔═══╗╔╗ ╔╗╔══╗
echo.                  ║╔═╗║         ║║      ║║ ║╔═╗║║║ ║║╚╣╠╝
echo.                  ║╚══╗╔╗ ╔╗╔╗╔╗║╚═╗╔══╗║║ ║║ ╚╝║║ ║║ ║║ 
echo.                  ╚══╗║║║ ║║║╚╝║║╔╗║║╔╗║║║ ║║╔═╗║║ ║║ ║║ 
echo.                  ║╚═╝║║╚═╝║║║║║║╚╝║║╚╝║║╚╗║╚╩═║║╚═╝║╔╣╠╗
echo.                  ╚═══╝╚═╗╔╝╚╩╩╝╚══╝╚══╝╚═╝╚═══╝╚═══╝╚══╝
echo.                       ╔═╝║                              
echo.                       ╚══╝                              
echo.
echo                          [1] ▸ Example Choice 1
echo                          [2] ▸ Example Choice 2
echo                          [3] ▸ Example Choice 3
echo                          [4] ▸ Example Choice 4
echo.
set /p ch=Make a Selection » 
if %ch%==1 goto Choice1
if %ch%==2 goto Choice2
if %ch%==3 goto Choice3
if %ch%==4 goto Choice4
goto HomeGUI

:choice1
goto HomeGUI

:choice2
goto HomeGUI

:choice3
goto HomeGUI

:choice4
goto HomeGUI
setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

if exist zombie_barney.mdl xcopy /F /Y zombie_barney.mdl %~dp0..\..\models\zombie_barney.mdl*

endlocal

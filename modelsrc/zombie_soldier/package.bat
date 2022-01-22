setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

if exist zombie_soldier.mdl xcopy /F /Y zombie_soldier.mdl %~dp0..\..\models\zombie_soldier.mdl*

endlocal

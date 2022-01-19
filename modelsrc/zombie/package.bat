setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

if exist zombie.mdl xcopy /F /Y zombie.mdl %~dp0..\..\models\zombie.mdl*

endlocal

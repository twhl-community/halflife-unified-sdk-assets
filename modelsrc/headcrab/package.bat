setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

if exist headcrab.mdl xcopy /F /Y headcrab.mdl %~dp0..\..\models\headcrab.mdl*

endlocal

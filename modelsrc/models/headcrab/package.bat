setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

if exist headcrab.mdl xcopy /F /Y headcrab.mdl %~dp0..\..\mdl\ld\headcrab.mdl*

endlocal

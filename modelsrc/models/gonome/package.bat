setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=gonome

if exist %basename%.mdl xcopy /F /Y %basename%.mdl %~dp0..\..\mdl\ld\%basename%.mdl*

endlocal

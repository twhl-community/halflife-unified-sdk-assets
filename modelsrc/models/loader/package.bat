setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=loader

if exist %basename%.mdl xcopy /F /Y %basename%.mdl %~dp0..\..\mdl\ld\%basename%.mdl*

endlocal

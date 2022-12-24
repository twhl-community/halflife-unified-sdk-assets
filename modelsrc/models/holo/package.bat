setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=holo

if exist %basename%.mdl xcopy /F /Y %basename%.mdl %~dp0..\..\models\%basename%.mdl*

endlocal

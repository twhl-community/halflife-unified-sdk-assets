setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=w_satchel

if exist %basename%_hd.mdl xcopy /F /Y %basename%_hd.mdl %~dp0..\..\models_hd\%basename%.mdl*

endlocal
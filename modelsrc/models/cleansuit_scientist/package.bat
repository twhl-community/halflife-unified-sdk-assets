setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=cleansuit_scientist

if exist %basename%_ld.mdl xcopy /F /Y %basename%_ld.mdl %~dp0..\..\models\%basename%.mdl*
if exist %basename%_ld_bshift.mdl xcopy /F /Y %basename%_ld_bshift.mdl %~dp0..\..\models\bshift\%basename%.mdl*
if exist %basename%_hd.mdl xcopy /F /Y %basename%_hd.mdl %~dp0..\..\models_hd\%basename%.mdl*

endlocal

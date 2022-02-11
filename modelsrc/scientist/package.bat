setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=scientist

if exist %basename%_ld.mdl xcopy /F /Y %basename%_ld.mdl %~dp0..\..\models\%basename%.mdl*
if exist %basename%_ld_op4.mdl xcopy /F /Y %basename%_ld_op4.mdl %~dp0..\..\models\op4\%basename%.mdl*
if exist %basename%_ld_bshift.mdl xcopy /F /Y %basename%_ld_bshift.mdl %~dp0..\..\models\bshift\%basename%.mdl*

if exist %basename%_hd_op4.mdl xcopy /F /Y %basename%_hd_op4.mdl %~dp0..\..\models_hd\op4\%basename%.mdl*

endlocal

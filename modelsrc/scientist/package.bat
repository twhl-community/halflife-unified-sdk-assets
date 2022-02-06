setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=scientist

if exist %basename%_ld.mdl xcopy /F /Y %basename%_ld.mdl %~dp0..\..\models\%basename%.mdl*
if exist %basename%_ld_op4.mdl xcopy /F /Y %basename%_ld_op4.mdl %~dp0..\..\models\op4\%basename%.mdl*

endlocal

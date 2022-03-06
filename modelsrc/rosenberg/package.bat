setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=rosenberg

if exist %basename%_ld_bshift.mdl xcopy /F /Y %basename%_ld_bshift.mdl %~dp0..\..\models\bshift\%basename%.mdl*

endlocal

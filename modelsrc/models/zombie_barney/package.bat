setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=zombie_barney

if exist %basename%_ld.mdl xcopy /F /Y %basename%_ld.mdl %~dp0..\..\mdl\ld\%basename%.mdl*

endlocal

setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=holo

if exist %basename%.mdl xcopy /F /Y %basename%.mdl %~dp0..\..\mdl\ld\%basename%.mdl*
if exist %basename%_cart.mdl xcopy /F /Y %basename%_cart.mdl %~dp0..\..\mdl\ld\%basename%_cart.mdl*

endlocal

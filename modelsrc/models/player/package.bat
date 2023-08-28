setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=player

rem Copy Barney player model

if exist %basename%_barney.mdl xcopy /F /Y %basename%_barney.mdl %~dp0..\..\mdl\ld\bshift\%basename%.mdl*

rem Copy Gordon player model

if exist %basename%_gordon.mdl xcopy /F /Y %basename%_gordon.mdl %~dp0..\..\mdl\ld\%basename%.mdl*

rem Copy Dead hazard suit model
set basename=deadhaz
if exist %basename%.mdl xcopy /F /Y %basename%.mdl %~dp0..\..\mdl\ld\%basename%.mdl*

endlocal

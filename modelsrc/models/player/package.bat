setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=player

rem Copy Barney player model

if exist %basename%_barney.mdl xcopy /F /Y %basename%_barney.mdl %~dp0..\..\models\bshift\%basename%.mdl*

rem Copy Gordon player model

if exist %basename%_gordon.mdl xcopy /F /Y %basename%_gordon.mdl %~dp0..\..\models\%basename%.mdl*

endlocal

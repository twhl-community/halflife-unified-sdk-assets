setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=player

rem Copy Barney player model

if exist %basename%_barney.mdl xcopy /F /Y %basename%_barney.mdl %~dp0..\..\models\bshift\%basename%.mdl*
if exist %basename%_barneyT.mdl xcopy /F /Y %basename%_barneyT.mdl %~dp0..\..\models\bshift\%basename%T.mdl*

rem Copy Gordon player model

if exist %basename%_gordon.mdl xcopy /F /Y %basename%_gordon.mdl %~dp0..\..\models\%basename%.mdl*
if exist %basename%_gordonT.mdl xcopy /F /Y %basename%_gordonT.mdl %~dp0..\..\models\%basename%T.mdl*

endlocal

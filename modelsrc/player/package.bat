setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=player

rem Copy Gordon player model

if exist %basename%_gordon.mdl xcopy /F /Y %basename%_gordon.mdl %~dp0..\..\models\%basename%.mdl*
if exist %basename%_gordonT.mdl xcopy /F /Y %basename%_gordonT.mdl %~dp0..\..\models\%basename%T.mdl*

endlocal

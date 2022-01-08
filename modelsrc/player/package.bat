setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=player

rem Copy Gordon player model

if exist %basename%_gordon.mdl xcopy /F /Y %basename%_gordon.mdl %~dp0..\..\models\%basename%.mdl*

endlocal

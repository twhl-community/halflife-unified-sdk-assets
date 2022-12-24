setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=tentacle2

if exist %basename%.mdl xcopy /F /Y %basename%.mdl %~dp0..\..\mdl\ld\%basename%.mdl*

rem Lower tentacle2 model

set basename=tentacle2_lower

if exist %basename%.mdl xcopy /F /Y %basename%.mdl %~dp0..\..\mdl\ld\%basename%.mdl*

endlocal

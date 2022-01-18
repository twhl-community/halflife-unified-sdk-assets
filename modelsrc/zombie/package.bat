setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=zombie

rem Copy zombie model

if exist %basename%.mdl xcopy /F /Y %basename%.mdl %~dp0..\..\models\%basename%.mdl*
if exist %basename%01.mdl xcopy /F /Y %basename%01.mdl %~dp0..\..\models\%basename%01.mdl*
if exist %basename%02.mdl xcopy /F /Y %basename%02.mdl %~dp0..\..\models\%basename%02.mdl*
if exist %basename%03.mdl xcopy /F /Y %basename%03.mdl %~dp0..\..\models\%basename%03.mdl*
if exist %basename%04.mdl xcopy /F /Y %basename%04.mdl %~dp0..\..\models\%basename%04.mdl*

endlocal

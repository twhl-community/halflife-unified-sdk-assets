setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=barney

if exist %basename%_ld.mdl xcopy /F /Y %basename%_ld.mdl %~dp0..\..\mdl\ld\%basename%.mdl*
if exist %basename%_hd.mdl xcopy /F /Y %basename%_hd.mdl %~dp0..\..\mdl\hd\%basename%.mdl*

rem intro_barney.mdl

set basename=intro_barney

if exist %basename%_ld.mdl xcopy /F /Y %basename%_ld.mdl %~dp0..\..\mdl\ld\%basename%.mdl*
if exist %basename%_hd.mdl xcopy /F /Y %basename%_hd.mdl %~dp0..\..\mdl\hd\%basename%.mdl*

endlocal

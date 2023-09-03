setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=scientist

if exist %basename%_ld.mdl xcopy /F /Y %basename%_ld.mdl %~dp0..\..\mdl\ld\%basename%.mdl*
rem if exist %basename%_ld_bshift.mdl xcopy /F /Y %basename%_ld_bshift.mdl %~dp0..\..\mdl\ld\bshift\%basename%.mdl*

if exist %basename%_hd.mdl xcopy /F /Y %basename%_hd.mdl %~dp0..\..\mdl\hd\%basename%.mdl*

rem Civilian scientists

if exist %basename%_ld.mdl xcopy /F /Y %basename%_ld.mdl %~dp0..\..\mdl\ld\civ_%basename%.mdl*
rem if exist %basename%_ld_bshift.mdl xcopy /F /Y %basename%_ld_bshift.mdl %~dp0..\..\mdl\ld\bshift\civ_%basename%.mdl*

rem Cower scientists

set basename=scientist_cower

if exist %basename%_ld.mdl xcopy /F /Y %basename%_ld.mdl %~dp0..\..\mdl\ld\%basename%.mdl*
if exist %basename%_hd.mdl xcopy /F /Y %basename%_hd.mdl %~dp0..\..\mdl\hd\%basename%.mdl*

endlocal

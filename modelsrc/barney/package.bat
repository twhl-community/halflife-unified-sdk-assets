setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=barney

if exist %basename%_ld.mdl xcopy /F /Y %basename%_ld.mdl %~dp0..\..\models\%basename%.mdl*
if exist %basename%_hd.mdl xcopy /F /Y %basename%_hd.mdl %~dp0..\..\models_hd\%basename%.mdl*
if exist %basename%_hd_gearbox.mdl (
  xcopy /F /Y %basename%_hd_gearbox.mdl %~dp0..\..\models_hd\op4\%basename%.mdl*
  xcopy /F /Y %basename%_hd_gearbox.mdl %~dp0..\..\models_hd\bshift\%basename%.mdl*
)

endlocal

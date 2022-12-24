setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=civ_scientist

if exist %basename%_hd.mdl xcopy /F /Y %basename%_hd.mdl %~dp0..\..\mdl\hd\%basename%.mdl*

endlocal

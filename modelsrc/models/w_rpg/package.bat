setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

set basename=w_rpg

if exist %basename%_hd.mdl xcopy /F /Y %basename%_hd.mdl %~dp0..\..\mdl\hd\%basename%.mdl*

endlocal

setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

rem Copy LD HEV MDLs to models\

for /r "%~dp0" %%f in (*_hev_ld.mdl) do (
  set filename=%%~nxf
  rem Remove end suffix.
  set filename=!filename:~0,-11!.mdl
  xcopy /F /Y %%f %~dp0..\models\!filename!*
)

rem Copy LD soldier MDLs to models\op4\

for /r "%~dp0" %%f in (*_soldier_ld.mdl) do (
  set filename=%%~nxf
  rem Remove end suffix.
  set filename=!filename:~0,-15!.mdl
  xcopy /F /Y %%f %~dp0..\models\op4\!filename!*
)

rem Copy LD guard MDLs to models\bshift\

for /r "%~dp0" %%f in (*_guard_ld.mdl) do (
  set filename=%%~nxf
  rem Remove end suffix.
  set filename=!filename:~0,-13!.mdl
  xcopy /F /Y %%f %~dp0..\models\bshift\!filename!*
)

rem Copy HD soldier MDLs to models_hd\op4\

for /r "%~dp0" %%f in (*_soldier_hd.mdl) do (
  set filename=%%~nxf
  rem Remove end suffix.
  set filename=!filename:~0,-15!.mdl
  xcopy /F /Y %%f %~dp0..\models_hd\op4\!filename!*
)

pause
endlocal

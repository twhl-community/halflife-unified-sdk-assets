setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

rem Execute all package scripts

for /r "%~dp0..\modelsrc" %%f in (*package.bat) do (
  pushd "%%~dpf"
    call %%~nxf
  popd
)

pause
endlocal

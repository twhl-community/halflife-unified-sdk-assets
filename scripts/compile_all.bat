setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

for /r "%~dp0..\modelsrc" %%f in (*.qc) do (
  pushd "%%~dpf"
    echo ================================
    echo.
    echo COMPILING %%~nxf
    echo.
    echo ================================
    echo.
    %STUDIOMDL% %%~nxf
    echo.
  popd
)

pause
endlocal

setlocal enableextensions enabledelayedexpansion
@echo off
prompt $
cls

for /r "%~dp0" %%f in (*.qc) do (
  pushd "%%~dpf"
    echo ================================
    echo.
    echo COMPILING %%~nxf
    echo.
    echo ================================
    echo.
    %SPRGEN% -16bit %%~nxf
    echo.
  popd
)

pause
endlocal

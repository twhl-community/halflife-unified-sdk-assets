@echo off

setlocal EnableDelayedExpansion

set GameName=Half-Life

rem Only list maps that have ripent changes. Unmodified maps are available through fallback_dir.
set maps=

set Root=../
set GameDirectory=%Root%../gearbox
set ToolsDirectory=%Root%tools/
set Extractor="%ToolsDirectory%7z.exe"
set Ripent="%ToolsDirectory%ripent.exe"

set MapEntFiles=%Root%installer/map_ent_files.rar
set MapsDirectory=%Root%maps

rem Settings

rem Don't log normal output. Errors are still logged.
set /A logOutput=1

rem Wait for input when done.
set /A waitForInput=1

for %%a in (%*) do (
	echo %%a
	if "%%a"=="-silent" (
		set /A logOutput=0
	) else if "%%a"=="-nopause" (
		set /A waitForInput=0
	)
)

if %logOutput%==1 (
	echo.
	echo Installing %GameName% content...
	echo.
)

if %logOutput%==1 (
	echo.
	echo Verifying presence of files...
	echo.
)

rem Check to see that all tools are present
set /A missingFiles=0

for %%t in (%Extractor% %Ripent%) do (
	if not exist %%t (
		echo Missing tool %%t
		set /A missingFiles=1
	)
)

if %missingFiles%==0 (
	call :CopyFiles
)

if %logOutput%==1 (
	echo.
	echo Finished installing %GameName% content
	echo.
)

if %waitForInput%==1 (
	pause
)

exit /B 0

:CopyFiles

	set /A missingFiles=0

	for %%m in (%maps%) do (
		set mapPath=%GameDirectory%/maps/%%m.bsp

		if not exist !mapPath! (
			echo Map !mapPath! is missing
			set /A missingFiles=1
		)
	)

	if %missingFiles%==0 (
		if %logOutput%==1 (
			echo.
			echo Copying maps...
			echo.
		)

		for %%m in (%maps%) do (
			set mapPath=%GameDirectory%/maps/%%m.bsp
			
			robocopy "%GameDirectory%/maps" "%MapsDirectory%" "%%m.bsp" /NFL /NDL /NJH /NJS /nc /ns /np > NUL:
		)
		
		if %logOutput%==1 (
			echo.
			echo Extracting ent files...
			echo.
		)

		%Extractor% x "%MapEntFiles%" -o%MapsDirectory% -y -bso0 -bsp0

		if %logOutput%==1 (
			echo.
			echo Applying ent files to maps...
			echo.
		)

		for %%m in (%maps%) do (
			set entFilePath=%MapsDirectory%/%%m.ent
			
			if exist !entFilePath! (
				rem Don't show ripent output
				%Ripent% -import "%MapsDirectory%/%%m.bsp" "!entFilePath!" > NUL:
			)
		)

		if %logOutput%==1 (
			echo.
			echo Cleaning up ent files...
			echo.
		)

		for %%m in (%maps%) do (
			del "%MapsDirectory%/%%m.ent"
		)

	) else (
		echo One or more files are missing
	)

exit /B 0

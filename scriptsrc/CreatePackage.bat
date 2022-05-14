@echo off

rem This also ensures the cd command does not change the directory in the command window that runs this script
setlocal EnableDelayedExpansion

rem Convoluted way to get the mod directory name so this script can be used elsewhere
set path=%~p0
rem Strip trailing slash
set path=%path:~0,-1%

rem Get parent directory
for %%f in ("%path%") do set path=%%~pf

rem Strip trailing slash
set path=%path:~0,-1%

rem Extract directory name
for %%f in ("%path%") do set modDirectory=%%~nf

rem echo %modDirectory%

rem Move to Half-Life directory
cd ../..

set ArchiveTool="%modDirectory%/tools/7z.exe"

rem Must be an archive type that 7-zip can compress
set PackageName=HalfLifeUpdated.7z

rem List of files to package
rem This script (CreatePackage.bat) is also included for others to use
rem Filenames ending with ".install" will be renamed to remove this extension after being added to the archive
set PackageFiles="cl_dlls/client.dll" "dlls/hl.dll" "installer/map_ent_files.rar" "delta.lst" "settings.scr.install" "user.scr.install" "models/" "resource/" "scripts/" "tools/" "liblist.gam"
set HDPackageFiles="installer/hd/models/"

rem Files to remove from the archive
set PackageFilesExclusionList="models/player/"

echo.
echo Creating archive %PackageName%
echo.

CALL :AddFilesToPackage "%modDirectory%" "%modDirectory%" "%PackageFiles%" "%PackageFilesExclusionList%" ""
CALL :AddFilesToPackage "%modDirectory%" "%modDirectory%_hd" "%HDPackageFiles%" "" "installer/hd/"

:AddFilesToPackage

	set sourceModDirectoryName=%~1
	set destinationModDirectoryName=%~2
	set packageFiles=%~3
	set packageFilesExclusionList=%~4
	set prefixToRemove=%~5
	
	for %%f in (%packageFiles%) do (
		set fileName=%%f
		set fileName=!fileName:~1,-1!
		
		if "!fileName:~-1!"=="/" (
			echo Adding directory !fileName!
		) else (
			echo Adding file !fileName!
		)
		
		rem Strip the quotes as well
		set completePath=%sourceModDirectoryName%/!fileName!
		
		%ArchiveTool% a %PackageName% "!completePath!" > NUL:
		
		set newName=!completePath!
		
		rem Strip the prefix from the filename
		if not "!prefixToRemove!"=="" (
			set newName=!newName:%prefixToRemove%=!
		)
		
		rem Change the directory prefix
		if not "!sourceModDirectoryName!"=="!destinationModDirectoryName!" (
			set newName=!newName:%sourceModDirectoryName%=%destinationModDirectoryName%!
		)
		
		rem Files ending with ".install" need to be renamed
		if "!newName:~-8,8!"==".install" (
			set newName=!newName:~0,-8!
		)
		
		if not "!completePath!" == "!newName!" (
			echo Renaming "!completePath!" to "!newName!"
			
			rem If the archive already existed the target name may already exist, so remove any existing files first
			%ArchiveTool% d %PackageName% "!newName!" > NUL:
			
			%ArchiveTool% rn %PackageName% "!completePath!" "!newName!" > NUL:
		)
	)

	for %%f in (%packageFilesExclusionList%) do (
		set fileName=%%f
		set fileName=!fileName:~1,-1!
		
		if "!fileName:~-1!"=="/" (
			echo Removing directory "!fileName!"
		) else (
			echo Removing file "!fileName!"
		)
		
		%ArchiveTool% d %PackageName% "%sourceModDirectoryName%/!fileName!" > NUL:
	)

	EXIT /B 0

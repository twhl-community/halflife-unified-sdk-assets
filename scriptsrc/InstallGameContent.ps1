# Script to install game content into a mod installation.

. "./CommonScripts.ps1";

<#
    .SYNOPSIS
    Defines a single game as a source of content.
#>
class Game {
    [string] $Name;
    [string] $ModDirectory;
    [string] $MapEntFiles;
    [string[]] $MapsToCopy;

    Game([string] $name, [string] $modDirectory, [string] $mapEntFiles, [string[]] $mapsToCopy) {
        $this.Name = $name;
        $this.ModDirectory = $modDirectory;
        $this.MapEntFiles = $mapEntFiles;
        $this.MapsToCopy = $mapsToCopy;
    }
}

# Points to the current mod directory.
Set-Variable -Option Constant -Name "RootDirectory" -Value "..";

Set-Variable -Option Constant -Name "ToolsDirectory" -Value $(Join-Path $RootDirectory "tools");

function GetToolPath {
    param([string] $toolName)
    return $(Join-Path $ToolsDirectory $(GetToolName $toolName));
}

Set-Variable -Option Constant -Name "Extractor" -Value $(GetToolPath 7z);
Set-Variable -Option Constant -Name "Ripent" -Value $(GetToolPath ripent);
# TODO: need to make a Linux version.
Set-Variable -Option Constant -Name "BSPConverter" -Value $(GetToolPath BlueShiftBSPConverter);

# Destination directory for map files.
Set-Variable -Option Constant -Name "MapsDirectory" -Value $(Join-Path $RootDirectory "maps");

Set-Variable -Option Constant -Name "InstallerDirectory" -Value $(Join-Path $RootDirectory "installer");

function CheckToolsExist {
    $missingFiles = $false;

    foreach ($tool in $($Extractor, $Ripent)) {
        if (!(Test-Path $tool -PathType Leaf)) {
            Write-Error "Missing tool ${tool}";
            $missingFiles = $true;
        }
    }

    return !$missingFiles;
}

function CopyFiles {
    param([Game] $game, [switch] $ConvertFromBlueShiftFormat)

    Set-Variable -Option Constant -Name "GameDirectory" -Value $(Join-Path $RootDirectory ".." | Join-Path -ChildPath $game.ModDirectory);
    Set-Variable -Option Constant -Name "GameMapsDirectory" -Value $(Join-Path $GameDirectory "maps");

    $missingFiles = $false;

    foreach ($map in $game.MapsToCopy) {
        $mapPath = $(Join-Path $GameMapsDirectory "$map.bsp");

        if (!(Test-Path $mapPath -PathType Leaf)) {
            Write-Error "Map $mapPath is missing";
            $missingFiles = $true;
        }
    }

    if ($missingFiles) {
        Write-Error "One or more files are missing";
        return;
    }

    foreach ($map in $game.MapsToCopy) {
        $mapPath = $(Join-Path $GameMapsDirectory "$map.bsp");

        Write-Verbose "Copying map $mapPath...";
        Copy-Item $mapPath -Destination $MapsDirectory;
    }
    
    if ($ConvertFromBlueShiftFormat) {
        Write-Verbose "Converting maps to standard BSP format...";

        foreach ($map in $game.MapsToCopy) {
            $mapPath = $(Join-Path $GameMapsDirectory "$map.bsp");
    
            Write-Verbose "Converting map $mapPath...";
            (Start-Process -PassThru -NoNewWindow `
                -FilePath $BSPConverter -ArgumentList "`"$(Join-Path $MapsDirectory "$map.bsp")`"" `
                -RedirectStandardOutput "NUL").WaitForExit();
        }
    }

    Write-Verbose "Extracting ent files...";

    $mapEntFiles = $(Join-Path ${InstallerDirectory} $game.MapEntFiles);

    (Start-Process -PassThru -NoNewWindow -FilePath $Extractor -ArgumentList "x `"$mapEntFiles`" -o$MapsDirectory -y -bso0 -bsp0").WaitForExit();

    Write-Verbose "Applying ent files to maps...";

    foreach ($map in $game.MapsToCopy) {
        $entFilePath = $(Join-Path $MapsDirectory "$map.ent");
			
        if (Test-Path $entFilePath -PathType Leaf) {
            # Don't show ripent output
            Write-Verbose "Applying ent file $entFilePath...";
            (Start-Process -PassThru -NoNewWindow `
                -FilePath $Ripent -ArgumentList "-import `"$(Join-Path $MapsDirectory "$map.bsp")`" `"$entFilePath`"" `
                -RedirectStandardOutput "NUL").WaitForExit();

            # Print this so that if a modder is installing this on top of an existing mod
            # and there is an ent file there already, they'll know why it's gone.

            # Note for modders: don't keep ent files in the maps directory if you can help it,
            # and keep them checked in to version control to avoid losing them.
            Write-Verbose "Removing ent file $entFilePath...";
            Remove-Item -LiteralPath $entFilePath;
        }
    }
}

function CopyGameFiles {
    param ([Game[]] $games, [switch] $ConvertFromBlueShiftFormat)
    
    # Check to see that all tools are present
    Write-Verbose "Verifying presence of files...";

    if (CheckToolsExist) {
        foreach ($game in $games) {
            Write-Verbose "Installing $($game.Name) content...";
            CopyFiles $game -ConvertFromBlueShiftFormat:$ConvertFromBlueShiftFormat;
            Write-Verbose "Finished installing $($game.Name) content";
        }
    }
}

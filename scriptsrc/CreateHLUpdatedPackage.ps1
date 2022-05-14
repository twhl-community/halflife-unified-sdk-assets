# Packages Half-Life Updated.

[CmdletBinding()] param ();

. "./CreatePackage.ps1";

# Get the name of the mod directory.
Set-Variable -Option Constant -Name "ModDirectory" -Value $(Split-Path -Parent $PSScriptRoot | Split-Path -Leaf);

# Must be an archive type that 7-zip can compress.
Set-Variable -Option Constant -Name "PackageName" -Value "HalfLifeUpdated.7z";

# List of files to package.
# All scripts are also included for others to use.
# Filenames ending with ".install" will be renamed to remove this extension after being added to the archive.
# You must use forward slashes to separate directories.
# To copy entire directories, end the directory name with a forward slash.
Set-Variable -Option Constant -Name "PackageFiles" -Value (
    "cl_dlls/client.dll", "dlls/hl.dll",
    "delta.lst", "liblist.gam", "skill.cfg", "settings.scr.install", "user.scr.install",
    "installer/",
    "models/",
    "resource/",
    "scripts/",
    "tools/");

# Files to remove from the archive.
# Exclude the VS Code directory. The contents are available on the wiki if modders need them.
Set-Variable -Option Constant -Name "PackageFilesExclusionList" -Value (
    "models/player/",
    "scripts/.vscode/");

Set-Variable -Option Constant -Name "DirectoriesToRename" -Value @{
    # Renames the HD directory from modname/installer/hd to modname_hd.
    "%ModDirectory%/installer/hd" = "%ModDirectory%_hd"
};

# Move to Half-Life directory.
Push-Location -Path $(Join-Path ".." "..");

$packager = [Packager]::new($PackageName, $ModDirectory);

$packager.RemovePackageFile();

Write-Information "Creating archive $($packager.PackageName)";

$packager.AddFiles($PackageFiles);
$packager.RemoveFiles($PackageFilesExclusionList);
$packager.RenameDirectories($DirectoriesToRename);

# Restore original location.
Pop-Location;

# Installs Half-Life 1 content into a mod installation.

[CmdletBinding()] param ();

. "./InstallGameContent.ps1";

# List of games to copy content from.
# Only list maps that have ripent changes. Unmodified maps are available through fallback_dir.
Set-Variable -Option Constant -Name "Games" -Value ([Game[]] [Game]::new("Half-Life", "valve", "map_ent_files.rar", @()));

CopyGameFiles $Games;

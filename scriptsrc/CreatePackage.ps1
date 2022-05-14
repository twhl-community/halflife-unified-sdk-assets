# Script to create a mod package from a mod installation.

. "./CommonScripts.ps1";

# So output displays by default.
$InformationPreference = "Continue";

class Packager {
    [string] $PackageName;
    [string] $ModDirectoryName;
    hidden [string] $ArchiveTool;

    Packager([string] $packageName, [string] $modDirectoryName) {
        $this.PackageName = $packageName;
        $this.ModDirectoryName = $modDirectoryName;
        $this.ArchiveTool = $(Join-Path $this.ModDirectoryName "tools" | Join-Path -ChildPath $(GetToolName "7z"));
    }

    hidden [void] ArchiveCommand([string] $command, [string] $arguments) {
        (Start-Process -PassThru -NoNewWindow `
            -FilePath $this.ArchiveTool -ArgumentList "$command $($this.PackageName) $arguments" `
            -RedirectStandardOutput "NUL").WaitForExit();
    }

    [void] RemovePackageFile() {
        if (Test-Path $this.PackageName -PathType Leaf) {
            Write-Information "Removing archive $($this.PackageName)";
            Remove-Item -LiteralPath $this.PackageName;
        }
    }

    [void] AddFiles([string[]] $files) {
        foreach ($file in $files) {
            $completePath = Join-Path $this.ModDirectoryName $file;
    
            # Note: must check the original name because Join-Path will convert the directory separator.
            if ($file -match "/$") {
                Write-Information "Adding directory $completePath";
            }
            else {
                Write-Information "Adding file $completePath";
            }
    
            $this.ArchiveCommand("a", "`"$completePath`"");
    
            $newName = $completePath;
    
            # Files ending with ".install" need to be renamed.
            $newName = $newName -replace ".install$", ""
    
            if ($completePath -ne $newName) {
                Write-Information "Renaming `"$completePath`" to `"$newName`"";
    
                # If a file with the same name already exists, remove it.
                # This should be an error.
                $this.ArchiveCommand("d", "`"$newName`"");
                
                $this.ArchiveCommand("rn", "`"$completePath`" `"$newName`"");
            }
        }
    }

    [void] RemoveFiles([string[]] $files) {
        foreach ($file in $files) {
            $completePath = Join-Path $this.ModDirectoryName $file;
    
            if ($file -match "/$") {
                Write-Information "Removing directory $completePath";
            }
            else {
                Write-Information "Removing file $completePath";
            }
    
            $this.ArchiveCommand("d", "`"$completePath`"");
        }
    }

    hidden [string] ExpandDirectoryName([string] $directory) {
        # If the symbol %ModDirectory% occurs in the name, replace it with the actual name.
        $directory = $directory -replace "%ModDirectory%", $this.ModDirectoryName;

        # Convert directory separators to the platform default.
        $directory = $directory -replace "/", [System.IO.Path]::DirectorySeparatorChar;

        return $directory;
    }

    [void] RenameDirectories([hashtable] $directoriesToRename) {
        foreach ($source in $directoriesToRename.Keys) {
            $destination = $directoriesToRename[$source];

            $source = $this.ExpandDirectoryName($source);
            $destination = $this.ExpandDirectoryName($destination);
        
            Write-Information "Renaming directory `"$source`" to `"$destination`"";
            $this.ArchiveCommand("rn", "`"$source`" `"$destination`"");
        }
    }
}

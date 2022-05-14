<#
    .SYNOPSIS
    Get the platform-specific name for a tool. On Windows the name is $baseName.exe, on Unix systems like Linux it's just $baseName.
#>
function GetToolName {
    param([string] $baseName)

    if ($PSVersionTable.Platform -eq "Unix") {
        return $baseName;
    }
    else {
        return "$baseName.exe";
    }
}

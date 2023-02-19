# Time to link some stuff.

if ($PSVersionTable.Platform -eq "Unix") {
    if (-not (Test-Path -Path $env:HOME/.config/powershell)) {
        mkdir $env:HOME/.config/powershell
        Write-Verbose "Directory has been created."
    }
    else {
        Write-Verbose "Directory already exists."
    }
    ln -s $env:HOME/github/bin/powershell/Microsoft.PowerShell_profile.ps1 $env:HOME/.config/powershell/$1
    ln -s $env:HOME/github/bin/powershell/PowershellPrompt.ps1 $env:HOME/.config/powershell/$1
    ln -s $env:HOME/github/bin/powershell/PowershellFunctions.ps1 $env:HOME/.config/powershell/$1
    ln -s $env:HOME/github/bin/powershell/PowershellAliases.ps1 $env:HOME/.config/powershell/$1
}
else {
    if (-not (Test-Path -Path $env:HOMEPATH\.config\powershell)) {
        mkdir $env:HOMEPATH\.config\powershell
        Write-Verbose "Directory has been created."
    }
    else {
        Start-Process "pwsh" -Verb RunAs -ArgumentList "-file $env:HOMEPATH\github\bin\powershell\PowershellLinksWin.ps1"
    }
}
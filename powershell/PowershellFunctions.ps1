function Receive-GitHub {
    [CmdletBinding()]
    param (
    )
    if (Get-Command -Name git -CommandType Application) {
        git pull
    }
    else {
        Write-Warning -Message "Git is not installed"
    }
}

function Read-GitHub {
    [CmdletBinding()]
    param (
    )
    if (Get-Command -Name git -CommandType Application) {
        git status
    }
    else {
        Write-Warning -Message "Git is not installed"
    } 
}

function Send-GitHub {
    [CmdletBinding()]
    param (
    )
    if (Get-Command -Name git -CommandType Application) {
        git push
    }
    else {
        Write-Warning -Message "Git is not installed"
    } 
}

function Write-GitHub {
    [CmdletBinding()]
    param (
    )
    if (Get-Command -Name git -CommandType Application) {
        git add .; git commit; git push
    }
    else {
        Write-Warning -Message "Git is not installed"
    } 
}

function Get-Weather {
    [CmdletBinding()]
    param (
        [string]
        $Location
    )
    if ($Location -eq $null) {
        Invoke-RestMethod "wttr.in/?m"
    }
    else {
        Invoke-RestMethod "wttr.in/${Location}?m"
    }
}
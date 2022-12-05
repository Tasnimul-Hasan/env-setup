using namespace System.Management.Automation
using namespace System.Management.Automation.Language

# decorations
Import-Module -Name z
Import-Module -Name Terminal-Icons

Invoke-Expression (&starship init powershell)

# Uncomment the line below if your theme looks broken on first launch
# Clear-Host

# aliases
Set-Alias -Name vim -Value nvim
Set-Alias -Name cat -Value bat
Set-Alias -Name file -Value explorer

# functions
function refresh-profile {
    irm "https://github.com/Tasnimul-Hasan/env-setup/raw/main/refresh.ps1" | iex
}

function reload-profile {
    & $profile
}

function rmf {
    rm @args -re -fo
}

function mcd {
    param (
        [switch]$code
    )
    mkdir @args; cd @args 
    if ($code) { code . }
}

# git automations
function Git-Commit() {
    param(
        [string] $message,
        $branch
    )

    if (!$message) {
        $input = Read-Host("Commit Message")

        if ($input) { $message = $input }
        else {$message = Get-Date}
    }
    
    git add .;
    git commit -m $message;

    if ($branch) {
        git push -u origin $branch;
    }

    else {
        git push
    }
}

set-alias -name push -value Git-Commit

# loading PSReadLine configurations
psreadline_config

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
    Import-Module "$ChocolateyProfile"
}

using namespace System.Management.Automation
using namespace System.Management.Automation.Language

# aliases
Set-Alias -Name vim -Value nvim
Set-Alias -Name lua -Value lua53

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

set-alias -name gpush -value Git-Commit

# loading PSReadLine configurations
psreadline_config

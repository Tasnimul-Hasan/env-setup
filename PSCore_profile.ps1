using namespace System.Management.Automation
using namespace System.Management.Automation.Language
 
if ($host.Name -eq 'ConsoleHost')
{
    Import-Module -Name PSReadLine
}
Import-Module -Name posh-git
Import-Module -Name z
Import-Module -Name Terminal-Icons

Import-Module -Name oh-my-posh
Set-PoshPrompt -Theme iterm2

# functions
function _ {
    cd $HOME\workspace
}

# make and change into directory
function mcd { 
    mkdir @args; cd @args 
}

# git automations
function Git-Init(){
    param($repo)
    git init
    git branch -M main
    git remote add origin https://github.com/TasnimulHasan007/$repo.git
    git remote -v
}

set-alias -name ghi -value Git-Init

function Git-Commit() {
    param(
        [string] $message
    )
    git add .
    git commit -m $message
    git push
}

set-alias -name ghc -value Git-Commit
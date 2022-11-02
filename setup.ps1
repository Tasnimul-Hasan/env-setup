#If the file does not exist, create it.
if (-not(Test-Path -Path $PROFILE -PathType Leaf)) {
  try {
    Invoke-RestMethod https://github.com/Tasnimul-Hasan/env-setup/raw/main/PowerShell/Microsoft.PowerShell_profile.ps1 -o $PROFILE
    Write-Host "The profile @ [$PROFILE] has been created."
  }
  catch {
    throw $_.Exception.Message
  }
}
# If the file already exists, show the message and do nothing.
else {
  Get-Item -Path $PROFILE | Move-Item -Destination oldprofile.ps1 -Force
  Invoke-RestMethod https://github.com/Tasnimul-Hasan/env-setup/raw/main/PowerShell/Microsoft.PowerShell_profile.ps1 -o $PROFILE
  Write-Host "The profile @ [$PROFILE] has been created and old profile removed."
}

# Install necessary modules [i don't know how to install multiple modules with one command :'( ]
Install-Module -Name Terminal-Icons -Scope CurrentUser -Force -SkipPublisherCheck
Install-Module -Name z -Scope CurrentUser -Force -SkipPublisherCheck
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
Install-Module -Name posh-git -Scope CurrentUser -Force -SkipPublisherCheck

# Install oh-my-posh (windows only)
winget install JanDeDobbeleer.OhMyPosh -s winget

# Download my modified posh theme
if ($env:POSH_THEMES_PATH) {
  Invoke-RestMethod https://github.com/Tasnimul-Hasan/env-setup/raw/main/modified-posh-themes/star-modified.omp.json -o $env:POSH_THEMES_PATH/star-modified.omp.json
}

Write-Host "Please restart powershell" 
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

# Install necessary plugins
Install-Module -Name Terminal-Icons
Install-Module -Name z
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
Install-Module -Name posh-git

# Install oh-my-posh
winget install -e --accept-source-agreements --accept-package-agreements JanDeDobbeleer.OhMyPosh

# Restart profile
& $profile

# download my modified star omp theme and put it inside the themes folder
Invoke-RestMethod https://github.com/Tasnimul-Hasan/env-setup/raw/main/modimodified-posh-themes/star-modified.omp.json -o $PROFILE$env:POSH_THEMES_PATH\star-modified.omp.json
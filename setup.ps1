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

Write-Host "_______________Read Carefully_______________"
Write-Host "`n`nPlease install the necessary fonts and modules described in https://github.com/Tasnimul-Hasan/env-setup repository's README.md and run ``reload-profile``"
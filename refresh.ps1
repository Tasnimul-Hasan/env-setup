#If the file does not exist, create it.
if (-not(Test-Path -Path $PROFILE -PathType Leaf)) {
  # creating a the folder while the profile is going to live
  $parts = $profile.Split('\')
  $fd = $parts[0..($parts.Length - 2)] -Join '\'
  md $fd
}

# If the file already exists...
else {
  # getting the profile from github
	Invoke-RestMethod https://github.com/Tasnimul-Hasan/env-setup/raw/main/PowerShell/Microsoft.PowerShell_profile.ps1 -o $PROFILE

  # showing a success message
	Write-Host "The profile @ [$PROFILE] has been refreshed"
}
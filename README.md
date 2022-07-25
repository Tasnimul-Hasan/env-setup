## Softwares

- Version Control :
  - <a href="https://git-scm.com/">Git</a>
  - <a href="https://cli.github.com/">GitHub CLI</a>
- Shell : <a href="https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.2#installing-the-msi-package">Powershell Core</a>
- Package Managers :
  - <a href="https://www.microsoft.com/store/productId/9NBLGGH4NNS1">Winget</a>
  - <a href="https://chocolatey.org/install">Chocolatey</a>
    ```ps1
    Set-ExecutionPolicy Bypass -Scope Process -Force; iwr https://community.chocolatey.org/install.ps1 -UseBasicParsing | iex
    ```
- Code Editor : <a href="https://code.visualstudio.com/">Visual Studio Code</a>
  ```ps1
  choco install vscode
  ```
- Terminal Emulator : <a href="https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701">Windows Terminal</a>
  ```ps1
  winget install Microsoft.WindowsTerminal
  ```

## Fonts

- _[CascaydiaCove NF](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip)_
- _[Operator Mono SSm Lig](https://drive.google.com/file/d/1Je6Cc-2GYPz2QAd94yf5ne7JHolePyD7/view?usp=sharing)_

## Shell Beautification

- _[Terminal-Icons](https://www.powershellgallery.com/packages/Terminal-Icons/)_
  ```ps1
  Install-Module -Name Terminal-Icons
  ```
- _[z](https://www.powershellgallery.com/packages/z/1.1.13)_

  ```ps1
  Install-Module -Name z
  ```

- _[PSReadLine](https://www.powershellgallery.com/packages/PSReadLine/2.2.0-beta1)_

  ```ps1
  Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
  ```

- _[posh-git](https://www.powershellgallery.com/packages/posh-git/)_
  ```ps1
  Install-Module -Name posh-git
  ```
- _[oh-my-posh](https://ohmyposh.dev/docs/installation/windows)_
  ```ps1
  winget install JanDeDobbeleer.OhMyPosh -s winget
  ```

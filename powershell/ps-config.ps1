# ------------ GENERAL

# Remove italic styling from table headers
$PSStyle.Formatting.CustomTableHeaderLabel = $PSStyle.Formatting.TableHeader

# ------------ MODULES

# Terminal Icons
Import-Module -Name Terminal-Icons

# Oh My Posh
oh-my-posh init pwsh --config "C:\Users\gionn\GIO\config-files\powershell\gio.omp.json" | Invoke-Expression

# ------------ ALIASES

# General
New-Alias -Name t -Value NewItem
Set-Alias -Name ls -Value ChildItem

# Git / GitHub
New-Alias -Name g -Value GitStatus
New-Alias -Name gg -Value GitTree

# ------------ FUNCTIONS

# General
function NewItem { New-Item @args | Out-Null }
function ChildItem { 
  if ($PWD.Path -eq $env:USERPROFILE) {
    Get-ChildItem @args
  } else {
    Get-ChildItem @args -Force
  }
}

# Git / GitHub
function GitStatus { git status }
function GitTree { git log --oneline --graph --decorate --all }
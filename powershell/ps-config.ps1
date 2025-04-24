# ------------ MODULES

# Terminal Icons
Import-Module -Name Terminal-Icons

# Oh My Posh
oh-my-posh init pwsh --config "C:\Users\gionn\GIO\config-files\powershell\gio.omp.json" | Invoke-Expression


# ------------ ALIASES

# General
New-Alias -Name t -Value NewItem

# Git / GitHub
New-Alias -Name g -Value GitStatus
New-Alias -Name ga -Value GitAdd
New-Alias -Name gmm -Value GitCommit
New-Alias -Name gam -Value GitAddCommit
New-Alias -Name gg -Value GitTree
New-Alias -Name gs -Value GitSwitch
New-Alias -Name gsd -Value GitSwitchDetach


# ------------ FUNCTIONS

# General
function NewItem { New-Item @args | Out-Null }

# Git / GitHub
function GitStatus { git status }
function GitAdd { git add @args }
function GitCommit { git commit -m @args }
function GitAddCommit { git commit -am @args }
function GitTree { git log --oneline --graph --decorate --all }
function GitSwitch { git switch @args }
function GitSwitchDetach { git switch --detach @args }
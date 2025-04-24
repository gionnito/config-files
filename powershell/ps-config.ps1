# ------------ MODULES

# Oh My Posh
oh-my-posh init pwsh --config "C:\Users\gionn\GIO\config-files\powershell\gio.omp.json" | Invoke-Expression


# ------------ ALIASES

# General
New-Alias -Name t -Value NewItem

# Git / GitHub
New-Alias -Name g -Value GitStatus
New-Alias -Name gg -Value GitTree


# ------------ FUNCTIONS

# General
function NewItem { New-Item @args | Out-Null }

# Git / GitHub
function GitStatus { git status }
function GitTree { git log --oneline --graph --decorate --all }
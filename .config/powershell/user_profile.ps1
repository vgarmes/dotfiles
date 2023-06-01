# Prompt
Import-Module posh-git
oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/paradox.omp.json" | Invoke-Expression

# Icons
Import-Module -Name Terminal-Icons

# PSReadline
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Emacs

# Alias
Set-Alias ll ls
Set-Alias grep findstr

# Utilities
function delete-branches ($pattern) {
	git branch | Select-String -Pattern "$pattern" | ForEach-Object {
		git branch -D $_.ToString().Trim()
	}
}

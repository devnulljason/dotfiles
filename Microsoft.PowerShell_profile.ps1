#Requires -Module 'posh-git'

function Get-Weather($Location = "Provo", $Options = "1F") {
  $WeatherUrl = "https://wttr.in"
  $Weather = Invoke-WebRequest "$WeatherUrl/$Location`?$Options" -UserAgent curl
  $Weather.Content
}

$env:Path = "$env:Path;C:\ProgramData\Utilities"
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
New-Alias -Name br -Value broot
if ($Host.Name -eq "ConsoleHost") {
  Get-Weather | Write-Output
}
function prompt {
  $WorkingDirectory = $ExecutionContext.SessionState.Path.CurrentLocation.Path.Replace($Home, '~').Replace('\', '/')
  $Prompt = [char]0x03BB # Doing it this way for PS 5.1 compatibility
  Write-Host
  Write-Host $WorkingDirectory -ForegroundColor DarkGreen -NoNewLine
  Write-VcsStatus
  Write-Host
  Write-Host $Prompt -ForegroundColor Cyan -NoNewLine
  ' '
}

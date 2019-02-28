param($installPath, $toolsPath, $package, $project)
[System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

$PackageInstalled = $installPath + "\PackageInstalled.txt"
$MessageShown = Test-Path $PackageInstalled

if ($MessageShown -eq $False)
{
	[System.Windows.Forms.Messagebox]::Show("You need to restart Visual Studio after installing this NuGet package for the first time.", "TDS", 'OK', 'Warning')

	New-Item $PackageInstalled -type file -force -value "Package Installed" | Out-Null
}
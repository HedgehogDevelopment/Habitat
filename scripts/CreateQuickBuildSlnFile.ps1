$solutionFile = '..\Habitat.sln'
$solutionQuickBuildFile = '..\Habitat.QuickBuild.sln'

[bool]$skipLines = $false
$builder = New-Object System.Text.StringBuilder
foreach($line in Get-Content -Path $solutionFile) {
   if($skipLines -or $line.StartsWith("	ProjectSection(ProjectDependencies)", [System.StringComparison]::Ordinal)) {
       Write-Host "Skipping line $($line)" -ForegroundColor Yellow
       $skipLines = $true
       
       if($line.StartsWith("	EndProjectSection", [System.StringComparison]::Ordinal)) {
           Write-Host "No longer skipping lines $($line)" -ForegroundColor Yellow
           $skipLines = $false
       } else {
           continue
       }
   } else {
       $builder.AppendLine($line) | Out-Null
   }
}

[System.IO.File]::WriteAllText($solutionQuickBuildFile,$builder.ToString());
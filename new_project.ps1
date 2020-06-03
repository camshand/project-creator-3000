$projectName = Read-Host 'What is the Project Name?'

if (-not (Test-Path -LiteralPath .\$projectName)) {
New-Item -Path ".\" -Name "$projectName" -ItemType "directory"
Copy-Item -Path ".\1.new_project_TEMPLATE\*" -Destination ".\$projectName" -Recurse
Get-ChildItem $projectName -recurse 'tmplt*' | Rename-Item -NewName { $_.Name -replace 'tmplt', ($projectName) }
Invoke-Item .\$projectName
}
else {
Write-Host "A folder with Project name $projectName already exists"
Start-Sleep -Second 10
}

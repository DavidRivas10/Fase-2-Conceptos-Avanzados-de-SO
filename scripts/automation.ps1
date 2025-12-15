Write-Host "=== Script de automatización (Windows) ==="

$envVar = $env:VAR_ENTORNO
$secretSet = [string]::IsNullOrEmpty($env:SECRET_EXAMPLE) -eq $false

Write-Host "VAR_ENTORNO: $envVar"
Write-Host ("SECRET_EXAMPLE está definida? {0}" -f $(if ($secretSet) { "Sí" } else { "No" }))

$outputDir = "output\windows"
New-Item -ItemType Directory -Path $outputDir -Force | Out-Null

(systeminfo | Out-String) | Set-Content -Path "$outputDir\system-info.txt"

icacls "$outputDir\system-info.txt" /inheritance:r /grant:r "$($env:USERNAME):(R)" | Out-Null

$backgroundScript = "Start-Sleep 5; 'Proceso en segundo plano finalizado ' + (Get-Date) | Out-File -FilePath '$outputDir\background.log' -Append"
Start-Process powershell -ArgumentList "-NoProfile", "-Command", $backgroundScript -WindowStyle Hidden

Write-Host "Script de automatización Windows completado."
exit 0

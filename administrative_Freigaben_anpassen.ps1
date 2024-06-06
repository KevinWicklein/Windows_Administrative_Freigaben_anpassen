# Öffnen Sie den Registry-Editor
$RegistryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"

# Überprüfen Sie, ob der Pfad existiert
if (!(Test-Path $RegistryPath)) {
    Write-Host "Der Pfad $RegistryPath existiert nicht in der Registrierung."
    exit 1
}

# Erstellen Sie einen neuen DWORD-Wert namens LocalAccountTokenFilterPolicy
New-ItemProperty -Path $RegistryPath -Name "LocalAccountTokenFilterPolicy" -Value 1 -PropertyType DWORD -Force

# Überprüfen Sie, ob der Wert erfolgreich gesetzt wurde
if ((Get-ItemProperty -Path $RegistryPath -Name "LocalAccountTokenFilterPolicy").LocalAccountTokenFilterPolicy -eq 1) {
    Write-Host "Der Wert von LocalAccountTokenFilterPolicy wurde erfolgreich auf 1 gesetzt."
} else {
    Write-Host "Fehler beim Setzen des Werts von LocalAccountTokenFilterPolicy."
}

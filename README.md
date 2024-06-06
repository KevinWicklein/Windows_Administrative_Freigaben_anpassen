In diesem Fall bedeutet .\ im Pfad, dass die Batch-Datei im selben Verzeichnis nach der PowerShell-Datei sucht. Stellen Sie sicher, dass die Batch-Datei und die PowerShell-Datei im selben Verzeichnis liegen.

Wenn Sie diese Batch-Datei ausführen, wird sie eine neue PowerShell-Instanz mit Administratorrechten starten und Ihr Skript ausführen.

Registry für administrative Freigaben anpassen
Demnach müssen Sie auf dem Rechner, auf dessen administrative Freigaben Sie zugreifen wollen, die Registry anpassen. Starten Sie dazu als Erstes den Registry-Editor über den Ausführen-Dialog und den Befehl regedit.exe. Die anschließende Rückfrage der Benutzerkontensteuerung nicken Sie mit einem Klick auf die Schaltfläche Ja ab.

Wechseln Sie nun zum Zweig HKEY_LOCAL_MACHINE und hangeln sich dann weiter bis zu SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System. In diesem Subkey erstellen Sie per Rechtsklick ein neues DWORD und vergeben dafür den Namen LocalAccountTokenFilterPolicy. Dessen Wert ändern Sie anschließend von 0 in 1. Zum Schluss speichern Sie die vorgenommenen Änderungen.

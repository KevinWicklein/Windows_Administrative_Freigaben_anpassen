Registry für administrative Freigaben anpassen
Demnach müssen Sie auf dem Rechner, auf dessen administrative Freigaben Sie zugreifen wollen, die Registry anpassen. Starten Sie dazu als Erstes den Registry-Editor über den Ausführen-Dialog und den Befehl regedit.exe. Die anschließende Rückfrage der Benutzerkontensteuerung nicken Sie mit einem Klick auf die Schaltfläche Ja ab.

Wechseln Sie nun zum Zweig HKEY_LOCAL_MACHINE und hangeln sich dann weiter bis zu SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System. In diesem Subkey erstellen Sie per Rechtsklick ein neues DWORD und vergeben dafür den Namen LocalAccountTokenFilterPolicy. Dessen Wert ändern Sie anschließend von 0 in 1. Zum Schluss speichern Sie die vorgenommenen Änderungen.

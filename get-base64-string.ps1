$text = '$wsh = New-Object -ComObject Wscript.Shell; $wsh.Popup("you hacked by me");'
[Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($text), 'InsertLineBreaks')
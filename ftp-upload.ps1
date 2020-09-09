$File = "\filepath\file"
$ftp = "ftp://[id]:[password]@[host]/path/path/file"
$webclient = New-Object -TypeName System.Net.WebClient
$uri = New-Object -TypeName System.Uri -ArgumentList $ftp
$webclient.UploadFile($uri, $File)
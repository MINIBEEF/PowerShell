# form data
$Body = @{
    id = 'admin'
    pw = 'admin'
}

# get web session
$LoginResponse = Invoke-WebRequest 'http://YOURDOMAIN/login.php' -SessionVariable 'Session' -Body $Body -Method 'GET'

# get web response with session
$ProfileResponse = Invoke-WebRequest 'http://YOURDOMAIN/main.php' -WebSession $Session

$ProfileResponse
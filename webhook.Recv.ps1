# Start a listener on port 8000
$Listener = [System.Net.HttpListener]::new()
$Listener.Prefixes.Add("http://+:8000/")
$Listener.Start()

# Continuously listen for incoming requests
while ($true) {
    $Context = $Listener.GetContext()
    $Request = $Context.Request
    $Response = $Context.Response

    # Read the message from the request body
    $Stream = New-Object System.IO.StreamReader $Request.InputStream
    $Message = $Stream.ReadToEnd()
    $Stream.Close()

    # Process the message and send a response
    Write-Host "Received message: $Message"
    $Response.StatusCode = 200
    $Response.Close()
}
Invoke-WebRequest -Uri http://localhost:8080/spring-demonstrator/hello -Method Get

Invoke-WebRequest -Uri http://localhost:8080/spring-demonstrator/goodbye -Method Get
$cred = Get-Credential
$result = Invoke-WebRequest -Uri http://localhost:8080/spring-demonstrator/goodbye -Method Get -Authentication Basic -Credential $cred -AllowUnencryptedAuthentication

$headers = @{Cookie="SESSION=82e46a04-8ea2-4be8-a760-53f48551ff25"}
Invoke-WebRequest -Uri http://localhost:8080/spring-demonstrator/goodbye -Method Get -Headers $headers

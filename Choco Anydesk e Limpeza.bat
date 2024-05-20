@echo off

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install anydesk.install -fy 

reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System" /v CleanupProfiles /t REG_DWORD /d 15 /f

pause
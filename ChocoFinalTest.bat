@echo off

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install eclipse -fy 
choco install nodejs -fy 
choco install vscode -fy 
choco install python -fy 
choco install figma --ignore-checksums -fy
choco install xampp -fy
choco install mysql.workbench -fy
choco install vmware-workstation-player -fy
choco install anaconda3 -fy
choco install anydesk.install --ignore-checksums -fy

start https://visualg3.com.br/baixe-o-visualg-3-0-7/
start http://www.sis4.com/brModelo/download.html
start https://argouml.br.uptodown.com/windows/download

reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System" /v CleanupProfiles /t REG_DWORD /d 15 /f

pause
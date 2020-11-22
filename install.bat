Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install gsudo -y
choco install git -y
choco install googlechrome -y
choco install microsoft-windows-terminal -y
choco install vscode -y
choco install discord -y
choco install nodejs-lts -y
choco install microsoft-teeams -y

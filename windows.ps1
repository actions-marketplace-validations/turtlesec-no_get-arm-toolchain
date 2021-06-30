Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
scoop bucket add extras
scoop install gcc-arm-none-eabi
echo "$HOME/scoop/shims/" | Out-File -FilePath $env:GITHUB_PATH -Encoding utf8 -Append
gcc-arm-none-eabi version

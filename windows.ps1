Invoke-Expression "& {$(Invoke-RestMethod get.scoop.sh)} -RunAsAdmin"
scoop bucket add extras
scoop install gcc-arm-none-eabi
scoop info gcc-arm-none-eabi

echo "$HOME/scoop/apps/gcc-arm-none-eabi/10.3-2021.10/bin" | Out-File -FilePath $env:GITHUB_PATH -Encoding utf8 -Append
$pattern = '[\\/]'
$string = "$HOME/scoop/apps/gcc-arm-none-eabi/10.3-2021.10/bin"
$string = $string -replace $pattern, '/'
echo "INSTALL_DIR=$string" | Out-File -FilePath $env:GITHUB_ENV -Encoding utf8 -Append

$version = arm-none-eabi-gcc --version | select -first 1
echo $version
echo "VERSION=$version" | Out-File -FilePath $env:GITHUB_ENV -Encoding utf8 -Append

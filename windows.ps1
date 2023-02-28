Invoke-Expression "& {$(Invoke-RestMethod get.scoop.sh)} -RunAsAdmin"
scoop bucket add extras
scoop install gcc-arm-none-eabi
scoop info gcc-arm-none-eabi

$path = [System.IO.Path];
$arm_exe_path = scoop which arm-none-eabi-gcc
$arm_path = $path::GetDirectoryName($arm_exe_path)
$arm_path_resolved = Resolve-Path($arm_path) | select -ExpandProperty Path
echo "$arm_path_resolved" | Out-File -FilePath $env:GITHUB_PATH -Encoding utf8 -Append
# $pattern = '[\\/]'
# $string = "$HOME/scoop/apps/gcc-arm-none-eabi/10.3-2021.10/bin"
# $string = $string -replace $pattern, '/'
echo "INSTALL_DIR=$arm_path_resolved" | Out-File -FilePath $env:GITHUB_ENV -Encoding utf8 -Append

$version = arm-none-eabi-gcc --version | select -first 1
echo $version
echo "VERSION=$version" | Out-File -FilePath $env:GITHUB_ENV -Encoding utf8 -Append

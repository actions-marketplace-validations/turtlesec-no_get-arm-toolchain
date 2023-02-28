Invoke-Expression "& {$(Invoke-RestMethod get.scoop.sh)} -RunAsAdmin"
scoop bucket add extras
scoop install gcc-arm-none-eabi
scoop info gcc-arm-none-eabi

$arm_exe_path = scoop which arm-none-eabi-gcc
$arm_path = [System.IO.Path]::GetDirectoryName($arm_exe_path)
$arm_path_resolved = Resolve-Path($arm_path) | select -ExpandProperty Path
echo "$arm_path_resolved" | Out-File -FilePath $env:GITHUB_PATH -Encoding utf8 -Append
$pattern = '[\\/]'
$install_dir = $arm_path_resolved -replace $pattern, '/'
echo "Setting INSTALL_DIR to: $install_dir"
echo "INSTALL_DIR=$install_dir" | Out-File -FilePath $env:GITHUB_ENV -Encoding utf8 -Append

$version = arm-none-eabi-gcc --version | select -first 1
echo "Setting VERSION to: $version"
echo "VERSION=$version" | Out-File -FilePath $env:GITHUB_ENV -Encoding utf8 -Append

#Requires -PSEdition Core

Set-Location $PSScriptRoot

# Clean build directory
Remove-Item -LiteralPath $(Resolve-Path $PSScriptRoot/build) -Force -Recurse
# Build project
if ($IsWindows) {
  cmd.exe /c "call `"$env:VCVARS_HOME/vcvars64.bat`" &&  cmake --workflow --preset windows"
}
else {
  cmake --workflow --preset unix
}
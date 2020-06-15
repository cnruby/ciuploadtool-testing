$ErrorActionPreference = 'Stop';
Write-Host Starting install

if ($isWindows) {
  md c:\dev\ciuploadtool
  cd c:\dev\ciuploadtool
  curl -fsSL https://github.com/d1vanov/ciuploadtool/releases/download/continuous-development/ciuploadtool_windows_x86.zip -o ciuploadtool_windows_x86.zip
  7z x ciuploadtool_windows_x86.zip
} else {
}
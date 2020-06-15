$ErrorActionPreference = 'Stop';
Write-Host Starting after_build

if ($isWindows) {
  cd c:\dev
  7z a %DEPLOYMENT_TARGET% c:\dev\install\*
  md %APPVEYOR_BUILD_FOLDER%\artifacts
  cp %DEPLOYMENT_TARGET% %APPVEYOR_BUILD_FOLDER%\artifacts
} else {
}
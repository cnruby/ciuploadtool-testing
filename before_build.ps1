$ErrorActionPreference = 'Stop';
Write-Host Starting before_build

if ($isWindows) {
  cd c:\dev\ciuploadtool-testing
  md build
} else {
  cd $APPVEYOR_BUILD_FOLDER
  cmake -E make_directory $APPVEYOR_BUILD_FOLDER/build
}
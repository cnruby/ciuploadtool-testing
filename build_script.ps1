$ErrorActionPreference = 'Stop';
Write-Host Starting build_script

if ($isWindows) {
  if %prepare_mode%==YES c:\dev\ciuploadtool\ciuploadtool.exe -suffix="%APPVEYOR_REPO_BRANCH%" -preponly
  ps: if ($env:prepare_mode -eq "YES") { throw "Failing in order to stop the current build matrix job early" }
  cd c:\dev\ciuploadtool-testing\build
  cmake .. -GNinja -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_INSTALL_PREFIX="c:/dev/install"
  cmake --build . --target all
  cmake --build . --target install
} else {
}
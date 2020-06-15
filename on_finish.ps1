$ErrorActionPreference = 'Stop';
Write-Host Starting on_finish

if ($isWindows) {
  set PATH=C:\go\bin;%PATH%
  echo "APPVEYOR_REPO_BRANCH = "
  echo %APPVEYOR_REPO_BRANCH%
  cd c:\dev
  c:\dev\ciuploadtool\ciuploadtool.exe -verbose -suffix="%APPVEYOR_REPO_BRANCH%" %APPVEYOR_BUILD_FOLDER%\artifacts\*
} else {
}
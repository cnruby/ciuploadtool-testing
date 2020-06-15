$ErrorActionPreference = 'Stop';
Write-Host Starting init

if ($isWindows) {
  set ORIGPATH=%PATH%
  set tool=VS2017_x86
  set DEPLOYMENT_TARGET=ciuploadtool-testing_windows-%tool%_%APPVEYOR_REPO_COMMIT:~0,7%.zip
  call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvarsall.bat" x86
  set PATH="C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\MSBuild\15.0\Bin";%PATH%
} else {
}
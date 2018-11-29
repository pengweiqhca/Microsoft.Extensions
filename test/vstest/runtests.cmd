set target=%1
set version=%2
powershell.exe -NoProfile -NoLogo -ExecutionPolicy unrestricted -Command "./dotnet-install.ps1 -Version %version% -Channel 2.0 -NoCdn -InstallDir %HELIX_CORRELATION_PAYLOAD%"
set PATH=%HELIX_CORRELATION_PAYLOAD%;%PATH%
set DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1
dotnet vstest %target% --logger:trx



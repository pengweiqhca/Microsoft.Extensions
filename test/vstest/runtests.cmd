set target=%1
set cliVersion=%2
powershell.exe -NoProfile -NoLogo -ExecutionPolicy unrestricted -Command "./dotnet-install.ps1 -Version %version% -Channel 3.0 -Runtime dotnet -NoCdn -InstallDir %HELIX_CORRELATION_PAYLOAD%"
set PATH=%HELIX_CORRELATION_PAYLOAD%;%PATH%
dotnet vstest %target% --logger:trx
dir
dir %HELIX_CORRELATION_PAYLOAD%\shared\Microsoft.NETCore.App



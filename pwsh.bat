@echo off

set DOTNET_CLI_TELEMETRY_OPTOUT=1
set PWSH_ROOT_PATH=D:\pwsh
set DOTNET_ROOT_PATH=D:\dotnet

copy %PWSH_ROOT_PATH%\SharpShell.Loader.dll T:\SharpShell.Loader.dll >NUL
copy %PWSH_ROOT_PATH%\SharpShell.Loader.runtimeconfig.json T:\SharpShell.Loader.runtimeconfig.json >NUL
%DOTNET_ROOT_PATH%\dotnet.exe T:\SharpShell.Loader.dll %*
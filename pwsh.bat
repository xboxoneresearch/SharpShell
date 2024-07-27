@echo off

set DOTNET_CLI_TELEMETRY_OPTOUT=1
cd pwsh
..\dotnet\dotnet.exe msbuild .\run_pwsh.xml
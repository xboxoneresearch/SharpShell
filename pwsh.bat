@echo off

set DOTNET_CLI_ANALYTICS_OUTPUT=1
cd pwsh
..\dotnet\dotnet.exe msbuild .\run_pwsh.xml
# SharpShell

A bootstrapper to get PowerShell running on your Xbox One / Series console.

## Installation Requirements

- [.NET 6.0 SDK](https://dotnet.microsoft.com/en-us/download/dotnet/6.0)
- [PowerShell 7.2.3](https://github.com/PowerShell/PowerShell/releases/tag/v7.2.3)
- [SharpShell](https://github.com/xboxoneresearch/SharpShell/releases/latest)

## Installation

Create the following folder structure on your flash drive:
- A `dotnet` folder containing the extracted .NET SDK
- A `pwsh` folder containing the extracted PowerShell installation.
After that, extract the downloaded *SharpShell* release onto the root of your flash drive.
If you did everything correctly, you should now have a `pwsh.bat` file on the root of your flash drive.

## Usage

Get a remote shell (most likely using [collateral-damage](https://github.com/exploits-forsale/collateral-damage)),
then run `pwsh.bat`.

If everything went smoothly, you should now be dropped into a PowerShell prompt.
If you get a message regarding an "Internal CLR exception", just try to run it a few more times and/or restart your console. 
This can be a bit unstable at times.

## For developers

You can edit the code in SharpShell/Program.cs to run your own C# code at runtime. 
To then process your updated code into a workable payload, the build process for this is a bit convoluted:
- First, publish SharpShell using the included *DeployPublish* publishing profile.
- After that, run `generate_embedded.py` to update the builtin dependencies for the loader.
- Finally, build `SharpShell.Loader` **without analysis tools being enabled!**  
Building regularly through Visual Studio will invoke analyzers that take *ages* to run on the auto-generated dependencies file,
so if you value your time follow this guideline to retain reasonable build times.
- Copy the built `SharpShell.Loader.dll` next to `run_pwsh.xml` to then be able to invoke the loader through the normal `<path to dotnet.exe> msbuild <path to run_pwsh.xml>` command.

## Credits

- **Shadow LAG**, for discovering and implementing the initial MSBuild entrypoint and .NET loader

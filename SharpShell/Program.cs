using Microsoft.PowerShell;

namespace SharpShell
{
    public class Program
    {
        static void Main(string[] args)
        {
            UnmanagedPSEntry.Start(Array.Empty<string>(), 0);
        }
    }
}

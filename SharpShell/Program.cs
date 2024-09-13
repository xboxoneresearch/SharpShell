using Microsoft.PowerShell;

namespace SharpShell
{
    public class Program
    {
        static void Main(string[] args)
        {
            UnmanagedPSEntry.Start(args, 0);
        }
    }
}

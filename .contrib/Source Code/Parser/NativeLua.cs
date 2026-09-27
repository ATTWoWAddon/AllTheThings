using System;
using System.ComponentModel;
using System.IO;
using System.Runtime.InteropServices;

namespace ATT
{
    internal static class NativeLua
    {
        // Keep the module loaded for KeraLua's subsequent DllImport("lua54") calls.
        private static readonly IntPtr Module = Load();

        internal static void Preload()
        {
            if (Module == IntPtr.Zero)
                throw new InvalidOperationException("Lua native module was not loaded.");
        }

        private static IntPtr Load()
        {
            string architecture;
            switch (RuntimeInformation.ProcessArchitecture)
            {
                case Architecture.X86:
                    architecture = "x86";
                    break;
                case Architecture.X64:
                    architecture = "x64";
                    break;
                case Architecture.Arm64:
                    architecture = "ARM64";
                    break;
                default:
                    throw new PlatformNotSupportedException("Lua is unavailable for process architecture " + RuntimeInformation.ProcessArchitecture + ".");
            }

            string path = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, architecture, "lua54.dll");
            if (!File.Exists(path))
                throw new FileNotFoundException("Lua native module is missing for " + architecture + ".", path);

            // Resolve dependencies relative to this DLL while retaining the normal safe search paths.
            const uint loadLibrarySearchDllLoadDir = 0x00000100;
            const uint loadLibrarySearchDefaultDirs = 0x00001000;
            IntPtr module = LoadLibraryEx(path, IntPtr.Zero, loadLibrarySearchDllLoadDir | loadLibrarySearchDefaultDirs);
            if (module == IntPtr.Zero)
                throw new Win32Exception(Marshal.GetLastWin32Error(), "Could not load " + architecture + " Lua from " + path + ".");
            return module;
        }

        [DllImport("kernel32.dll", EntryPoint = "LoadLibraryExW", CharSet = CharSet.Unicode, SetLastError = true)]
        private static extern IntPtr LoadLibraryEx(string fileName, IntPtr reserved, uint flags);
    }
}

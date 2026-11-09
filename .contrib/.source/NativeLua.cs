using System;
using System.ComponentModel;
using System.IO;
using System.Runtime.InteropServices;

namespace ATT
{
    /// <summary>Loads the native Lua module for supported Windows processes.</summary>
    public static class NativeLua
    {
        private static readonly Lazy<IntPtr> Module = new Lazy<IntPtr>(Load);

        /// <summary>Rejects unsupported process architectures before accessing data.</summary>
        public static void EnsureSupportedArchitecture()
        {
            GetArchitecture();
        }

        /// <summary>Preloads the native Lua module for the current process.</summary>
        public static void Preload()
        {
            if (Module.Value == IntPtr.Zero)
                throw new InvalidOperationException("Lua native module was not loaded.");
        }

        private static string GetArchitecture()
        {
            if (!RuntimeInformation.IsOSPlatform(OSPlatform.Windows))
                throw new PlatformNotSupportedException("Native Lua loading requires Windows.");

            string architecture;
            switch (RuntimeInformation.ProcessArchitecture)
            {
                case Architecture.X64:
                    architecture = "x64";
                    break;
                case Architecture.Arm64:
                    architecture = "ARM64";
                    break;
                default:
                    throw new PlatformNotSupportedException(
                        "Any CPU Lua tools require an x64 or ARM64 process; detected " +
                        RuntimeInformation.ProcessArchitecture + ".");
            }

            return architecture;
        }

        private static IntPtr Load()
        {
            string architecture = GetArchitecture();
            string path = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, architecture, "lua54.dll");
            if (!File.Exists(path))
                throw new FileNotFoundException("Lua native module is missing for " + architecture + ".", path);

            const uint loadLibrarySearchDllLoadDir = 0x00000100;
            const uint loadLibrarySearchDefaultDirs = 0x00001000;
            IntPtr module = LoadLibraryEx(
                path, IntPtr.Zero, loadLibrarySearchDllLoadDir | loadLibrarySearchDefaultDirs);
            if (module == IntPtr.Zero)
                throw new Win32Exception(Marshal.GetLastWin32Error(), "Could not load Lua from " + path + ".");
            return module;
        }

        [DllImport("kernel32.dll", EntryPoint = "LoadLibraryExW", CharSet = CharSet.Unicode, SetLastError = true)]
        private static extern IntPtr LoadLibraryEx(string fileName, IntPtr reserved, uint flags);
    }
}

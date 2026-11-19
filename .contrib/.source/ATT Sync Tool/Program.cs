using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Threading;
using System.Diagnostics;
using System.Runtime.InteropServices;
using System.IO;

namespace ATT
{
	static class Program
	{
		#region Single Window Enforcement
		[DllImport("user32.dll")]
		[return: MarshalAs(UnmanagedType.Bool)]
		static extern bool SetForegroundWindow(IntPtr hWnd);

		[DllImport("user32.dll")]
		private static extern bool ShowWindow(IntPtr hwnd, int nCmdShow);
		#endregion

		/// <summary>
		/// The main entry point for the application.
		/// </summary>
		[STAThread]
		static void Main()
		{
			using (Mutex mutex = new Mutex(true, "ATT Sync Tool", out bool createdNew))
			{
				if (createdNew)
				{
					Application.EnableVisualStyles();
					Application.SetCompatibleTextRenderingDefault(false);
					Application.Run(new MainForm());
				}
				else
				{
					Process current = Process.GetCurrentProcess();
					foreach (Process process in Process.GetProcessesByName(current.ProcessName))
					{
						if (process.Id != current.Id)
						{
							SetForegroundWindow(process.MainWindowHandle);
							ShowWindow(process.MainWindowHandle, 3);
							break;
						}
					}
				}
			}
		}
	}
}

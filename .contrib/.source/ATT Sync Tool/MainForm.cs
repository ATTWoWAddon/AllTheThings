using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.Win32;

namespace ATT
{
    public partial class MainForm : Form
    {
        #region Static Functionality
        /// <summary>
        /// Whether or not the addon should startup automatically.
        /// </summary>
        public static PropertyChanged<bool> StartupAutomatically { get; }

        /// <summary>
        /// Get whether or not the program should startup automatically.
        /// </summary>
        /// <returns></returns>
        private static bool GetStartupAutomatically()
        {
            try
            {
                using (RegistryKey key = Registry.CurrentUser.OpenSubKey(@"SOFTWARE\ATT\ATT Sync Tool", true))
                {
                    if (key != null)
                    {
                        bool StartupAutomatically = Convert.ToBoolean(key.GetValue("StartupAutomatically", false));
                        key.Close();
                        return StartupAutomatically;
                    }
                    else
                    {
                        Registry.CurrentUser.CreateSubKey(@"SOFTWARE\ARR\ATT Sync Tool")?.Close();
                        return true;
                    }
                }
            }
            catch (Exception e)
            {
                Trace.WriteLine(e);
            }
            return false;
        }

        /// <summary>
        /// Set whether or not the program should startup automatically.
        /// </summary>
        /// <param name="startup">Whether or not to startup automatically.</param>
        private static void SetStartupAutomatically(bool startup)
        {
            try
            {
                using (RegistryKey rk = Registry.CurrentUser.OpenSubKey("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run", true))
                {
                    if (rk != null)
                    {
                        if (startup)
                            rk.SetValue(Application.ProductName, Application.ExecutablePath);
                        else
                            rk.DeleteValue(Application.ProductName, false);
                        rk.Close();
                    }
                }
            }
            catch (Exception e)
            {
                Trace.WriteLine(e);
            }
            try
            {
                using (RegistryKey rk = Registry.CurrentUser.OpenSubKey(@"SOFTWARE\ATT\ATT Sync Tool", true))
                {
                    if (rk != null)
                    {
                        rk.SetValue("StartupAutomatically", startup ? 1 : 0);
                        rk.Close();
                    }
                }
            }
            catch (Exception e)
            {
                Trace.WriteLine(e);
            }
            
            Trace.WriteLine(startup ? "Start with Windows." : "Do NOT start with Windows.");
        }

        /// <summary>
        /// Class constructor.
        /// </summary>
        static MainForm()
        {
            Tracer.Initialize();

            // Cache whether or not the setting for starting the tool with Windows is turned on.
            StartupAutomatically = new PropertyChanged<bool>(GetStartupAutomatically());
            StartupAutomatically.OnValueChanged += SetStartupAutomatically;
        }
        #endregion

        public MainForm()
        {
            InitializeComponent();
            Tracer.OnWrite += Tracer_OnWrite;
            StartupAutomatically.OnValueChanged += StartupAutomatically_OnValueChanged;
            ATT.Database.Initialize();
        }

        ~MainForm()
        {
            StartupAutomatically.OnValueChanged -= StartupAutomatically_OnValueChanged;
            Tracer.OnWrite -= Tracer_OnWrite;
        }

        /// <summary>
        /// When the Startup Automatically value changes, notify the log.
        /// </summary>
        /// <param name="shouldStartupAutomatically">Whether the tool should startup automatically with windows.</param>
        private void StartupAutomatically_OnValueChanged(bool shouldStartupAutomatically)
        {
            if (InvokeRequired)
            {
                Invoke((MethodInvoker)delegate { StartupAutomatically_OnValueChanged(shouldStartupAutomatically); });
                return;
            }
            checkBoxStartUp.Checked = shouldStartupAutomatically;
        }

        private void Tracer_OnWrite(string message)
        {
            if (InvokeRequired)
            {
                Invoke((MethodInvoker)delegate { Tracer_OnWrite(message); });
                return;
            }
            var utcNow = DateTime.Now;
            message = utcNow.ToShortDateString() + " " + utcNow.ToLongTimeString() + ": " + message;
            if (textBoxATT.Text.Length > 0 && !textBoxATT.Text.EndsWith(Environment.NewLine)) textBoxATT.Text += Environment.NewLine;
            textBoxATT.Text += message;
        }


        /// <summary>
        /// Sync the WTF folder with the ATT Database.
        /// </summary>
        public async Task Sync()
        {
            if (buttonSyncNow.Enabled)
            {
                buttonSyncNow.Enabled = false;
                if (timerOncePerHour.Enabled)
                {
                    timerOncePerHour.Stop();
                    timerOncePerHour.Start();
                }

                // Sync the Saved Variables with the Database.
                Trace.WriteLine("Syncing with ATT Saved Variables...");
                ATT.Database.SyncWithSavedVariables();
                Trace.WriteLine("Sync complete.");
                buttonSyncNow.Enabled = true;
            }
        }
        
        private void FormMain_Shown(object sender, EventArgs e)
        {
            checkBoxStartUp.Checked = StartupAutomatically.Value;
            Hide();
        }

        private void FormMain_Resize(object sender, EventArgs e)
        {
            if (this.WindowState == FormWindowState.Minimized)
            {
                Hide();
            }
        }

        private void notifyIconATT_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            Show();
        }

        private void contextMenuStripATT_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {
            switch (e.ClickedItem.Text)
            {
                case "Show":
                    Show();
                    break;
                case "Exit":
                    Environment.Exit(0);
                    break;
                default:
                    _ = Sync();
                    break;
            }
        }

        private void timerOncePerHour_Tick(object sender, EventArgs e)
        {
            _ = Sync();
        }
        
        protected override void OnVisibleChanged(EventArgs e)
        {
            base.OnVisibleChanged(e);
            if (this.Visible)
            {
                this.WindowState = FormWindowState.Normal;
                notifyIconATT.Visible = false;
            }
            else
            {
                notifyIconATT.Visible = true;
            }
        }

        private void checkBoxStartUp_CheckedChanged(object sender, EventArgs e)
        {
            StartupAutomatically.Value = checkBoxStartUp.Checked;
        }

        private void buttonSyncNow_Click(object sender, EventArgs e)
        {
            _ = Sync();
        }

        private void buttonExportToCSV_Click(object sender, EventArgs e)
        {
            var dialogResult = dialogExportAsCSV.ShowDialog();
            if (dialogResult == DialogResult.OK)
            {
                Trace.WriteLine($"Exporting Account Data to CSV Files...{Environment.NewLine}\t{dialogExportAsCSV.SelectedPath}");
                var directoryInfo = new DirectoryInfo(dialogExportAsCSV.SelectedPath);
                if (!directoryInfo.Exists) directoryInfo.Create();
                Database.ExportToCSV(directoryInfo.FullName);
                Trace.WriteLine($"Finished exporting files.");
                Process.Start("explorer.exe", dialogExportAsCSV.SelectedPath);
            }
        }
    }
}

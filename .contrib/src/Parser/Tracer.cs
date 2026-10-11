using System;
using System.Diagnostics;
using System.IO;
using System.Text;

namespace ATT
{
    /// <summary>
    /// The internal tracer class that listens to the log.
    /// </summary>
    public class Tracer : TraceListener
    {
        /// <summary>
        /// Triggers when a message is written to the tracer.
        /// </summary>
        public static event Action<string> OnWrite;

        /// <summary>
        /// The file name for the log file.
        /// </summary>
        private static string LogFileName;

        /// <summary>
        /// The class constructor.
        /// </summary>
        static Tracer()
        {
            OnWrite += WriteToBuffer;

            // Listen to all traces and write that to the log.
            Trace.AutoFlush = true;
            Trace.Listeners.Add(new Tracer());
        }

        /// <summary>
        /// Initialize the Tracer instance by triggering the class contructor.
        /// </summary>
        public static void Initialize()
        {
            // Do nothing.
        }

        public override void Write(string message)
        {
            OnWrite.Invoke(message);
        }
        public override void WriteLine(string message)
        {
            if (string.IsNullOrEmpty(message)) Write(Environment.NewLine);
            else Write($"{message}{Environment.NewLine}");
        }

        #region Buffering
        /// <summary>
        /// The buffer to write to prior to the log file being created. This is used to store messages that are written before the log file is created.
        /// </summary>
        private static StringBuilder _buffer = new StringBuilder();

        /// <summary>
        /// Write to the buffer. This is used to store messages that are written before the log file is created.
        /// </summary>
        /// <param name="message">The message to write.</param>
        private static void WriteToBuffer(string message)
        {
            lock(_buffer) _buffer.Append(message);
        }
        #endregion
        #region Logging
        /// <summary>
        /// Generate the Log File for the default location.
        /// </summary>
        public static void GenerateLogFile()
        {
            GenerateLogFile(Path.GetFullPath(Path.GetDirectoryName(System.Reflection.Assembly.GetEntryAssembly().Location)));
        }

        /// <summary>
        /// Generate the Log File for the specified folder. If the folder does not exist, it will be created.
        /// </summary>
        /// <param name="folder">The folder.</param>
        public static void GenerateLogFile(string folder)
        {
            // If we have already generated the log file, we don't need to do it again.
            if (_buffer == null) return;
            lock (_buffer)
            {
                OnWrite -= WriteToBuffer;
                Directory.CreateDirectory(folder);
                LogFileName = Path.Combine(folder, "log.txt");
                File.WriteAllText(LogFileName, _buffer.ToString(), Encoding.UTF8);
                OnWrite += WriteToLogFile;
                _buffer.Clear();
                _buffer = null;
            }
        }

        /// <summary>
        /// Write to the log file. GenerateLogFile must be called before this method is called, otherwise the log file will not be created and the message will be lost.
        /// </summary>
        /// <param name="message">The message.</param>
        private static void WriteToLogFile(string message)
        {
            File.AppendAllText(LogFileName, message);
        }
        #endregion
    }
}

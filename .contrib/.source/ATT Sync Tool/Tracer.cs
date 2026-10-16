using System;
using System.Diagnostics;
using System.IO;

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
            LogFileName = Path.Combine(Path.GetFullPath(Path.GetDirectoryName(System.Reflection.Assembly.GetEntryAssembly().Location)), "log.txt");
            OnWrite += delegate (string message)
            {
                File.AppendAllText(LogFileName, message);
            };

            // Listen to all traces and write that to the log.
            Trace.AutoFlush = true;
            Trace.Listeners.Add(new Tracer());
        }

        /// <summary>
        /// Initialize the Tracer instance by triggering the class constructor.
        /// </summary>
        public static void Initialize()
        {
            // Do nothing.
        }

        /// <summary>
        /// Write the message to the event handler.
        /// </summary>
        /// <param name="message">The message.</param>
        public override void Write(string message)
        {
            OnWrite.Invoke(message);
        }

        /// <summary>
        /// Write the message and a new line character to the event handler.
        /// </summary>
        /// <param name="message">The message.</param>
        public override void WriteLine(string message)
        {
            if (string.IsNullOrEmpty(message)) Write(Environment.NewLine);
            else Write($"{message}{Environment.NewLine}");
        }
    }
}
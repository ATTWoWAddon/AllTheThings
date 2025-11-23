using System;
using System.Collections.Generic;
using System.Diagnostics;

namespace ATT
{
    /// <summary>
    /// The Framework class. Methods and functionality concerning Logging
    /// </summary>
    public static partial class Framework
    {
        /// <summary>
        /// Represents whether any Error logging has occurred
        /// </summary>
        public static bool IsErrored { get; private set; }

        public static bool DebugLogging { get; internal set; }

        /// <summary>
        /// Outputs the message to the Trace only if DebugMode is enabled, including the serialized data if provided
        /// </summary>
        /// <param name="message"></param>
        public static void LogDebug(string message, IDictionary<string, object> data)
        {
            if (DebugLogging)
                Trace.WriteLine(message + (data != null ? (" " + ToJSON(data)) : string.Empty));
        }

        /// <summary>
        /// Outputs the message to the Trace only if DebugMode is enabled, including the serialized data if provided
        /// </summary>
        /// <param name="message"></param>
        public static void LogDebug(string message, object data = null)
        {
            if (DebugLogging)
                Trace.WriteLine(message + (data != null ? (" " + ToJSON(data)) : string.Empty));
        }

        /// <summary>
        /// Outputs the formatted message to the Trace only if DebugMode is enabled
        /// </summary>
        /// <param name="message"></param>
        public static void LogDebugFormatted(string format, params object[] content)
        {
            if (DebugLogging)
                Trace.WriteLine(string.Format(format, content));
        }

        /// <summary>
        /// Outputs the message to the Trace in Debug only which is something that may merit attention
        /// </summary>
        /// <param name="message"></param>
        public static void LogDebugWarn(string message, object data = null)
        {
            if (DebugLogging)
                Log("WARN: " + message + (data != null ? (" " + ToJSON(data)) : string.Empty));
        }

        /// <summary>
        /// Outputs the message to the Trace
        /// </summary>
        /// <param name="message"></param>
        public static void Log(string message, object data = null)
        {
            if (!DebugLogging && !string.IsNullOrEmpty(CurrentFileName))
                Trace.WriteLine("FILE: " + CurrentFileName);

            if (!string.IsNullOrEmpty(CurrentSubFileName))
                Trace.WriteLine(" -- SUBFILE: " + CurrentSubFileName);

            if (!string.IsNullOrEmpty(CurrentImportFileName))
                Trace.WriteLine(" -- IMPORT FILE: " + CurrentImportFileName);

            Trace.WriteLine(message + (data != null ? (" " + ToJSON(data)) : string.Empty));
        }

        /// <summary>
        /// Outputs the message to the Trace which requires User intervention
        /// </summary>
        /// <param name="message"></param>
        public static void LogWarn(string message, object data = null)
        {
            Log("WARN: " + message + (data != null ? (" " + ToJSON(data)) : string.Empty));
        }

        /// <summary>
        /// Outputs the message to the Trace which requires User intervention
        /// </summary>
        /// <param name="message"></param>
        public static void LogError(string message, object data = null)
        {
            IsErrored = true;
            Log("ERROR: " + message + (data != null ? (" " + ToJSON(data)) : string.Empty));
        }

        /// <summary>
        /// Outputs the message to the Trace which requires User intervention
        /// </summary>
        /// <param name="message"></param>
        public static void LogException(Exception ex, bool isInner = false)
        {
            IsErrored = true;
            if (!isInner)
                Log("==== EXCEPTION ====");

            if (ex is AggregateException aggEx)
            {
                LogError("AggregateException encountered with " + aggEx.InnerExceptions.Count + " inner exceptions.");
                Trace.WriteLine(aggEx.StackTrace);

                int index = 0;
                foreach (var inner in aggEx.InnerExceptions)
                {
                    Trace.WriteLine($"-- Inner Exception [{index}] --");
                    LogException(inner, true);
                    index++;
                }
            }
            else
            {
                LogError(ex.Message);
                Trace.WriteLine(ex.StackTrace);
            }
        }
    }
}

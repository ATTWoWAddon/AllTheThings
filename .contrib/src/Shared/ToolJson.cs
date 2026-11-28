using System;
using System.Diagnostics;

namespace ATT
{
	internal static class ToolJson
	{
#if ATT_USE_MINIJSON
		internal static readonly JsonData Data = new JsonData(new MiniJsonBackend());
#elif ATT_USE_NEWTONSOFTJSON
		internal static readonly JsonData Data = new JsonData(new NewtonsoftJsonBackend());
#else
		internal static readonly JsonData Data = new JsonData(new SystemTextJsonBackend());
#endif

		[Conditional("ATT_USE_MINIJSON")]
		internal static void WriteLicenseNotice()
		{
#if ATT_USE_MINIJSON
			Console.WriteLine("MiniJSON (c) 2013 Calvin Rien");
#endif
		}
	}
}

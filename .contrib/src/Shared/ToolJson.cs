using System;

namespace ATT
{
	internal static class ToolJson
	{
		internal static readonly JsonData Data = new JsonData(new MiniJsonBackend());

		internal static void WriteLicenseNotice() => Console.WriteLine("MiniJSON (c) 2013 Calvin Rien");
	}
}

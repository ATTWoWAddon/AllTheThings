using System;

namespace ATT.DB
{
    /// <summary>
    /// An attribute to apply to fields whose values are localized.
    /// </summary>
    [AttributeUsage(AttributeTargets.Property, Inherited = true)]
    public class LocalizeAttribute : Attribute
    {

    }
}

namespace ATT.FieldTypes
{
    public interface IExportableField
    {
        object AsExportType();

        bool HasData { get; }
    }
}
namespace ATT
{
    /// <summary>
    /// Represents a Stage in the sequence of a Parse operation
    /// </summary>
    public enum ParseStage
    {
        // If more are added, they must be listed in the order in which they take place
        NotStarted = 0,
        InitializeParserConfigs,
        RawJsonMerge,
        WagoDBMerge,
        ContributorDataMerge,
        PreProcessingSetup,
        Validation,
        ConditionalData,
        Incorporation,
        Consolidation,
        UnsortedGeneration,
        DataIntegrityAnalysis,
        ExportDebugData,
        ExportLocalizationStrings,
        ExportCategoryDB,
        ExportCustomHeaders,
        ExportFilterDB,
        ExportFlightPathDB,
        ExportObjectDB,
        ExportPhases,
        ExportAchievementData,
        ExportAddonData,
        ExportAutoSources,
        ExportAutoLocale,
        FinalLogging
    }
}

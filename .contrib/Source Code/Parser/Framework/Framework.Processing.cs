using ATT;
using ATT.DB;
using ATT.DB.Types;
using ATT.FieldTypes;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using static ATT.Export;
using static ATT.Framework;

namespace ATT
{
    partial class Framework
    {
        /// <summary>
        /// Represents a set of FilterIDs which when linked to Items in Ensembles are always granted when the Ensemble is used, even when the primary FilterID
        /// of the entire set of Items in an Ensemble are a different FilterID</para>
        /// Potentially only Cosmetic is applicable, but any other Types determined as always granted from Ensembles should be added here
        /// </summary>
        internal static readonly HashSet<long> Ensemble_IgnoredFilterIDs = new HashSet<long>
        {
            (long)Objects.Filters.Cosmetic,
            (long)Objects.Filters.Cloak
        };

        /// <summary>
        /// Contains function mappings against Sourced Groups to be executed in parallel following sequential Processing sequence
        /// </summary>
        private static readonly Dictionary<Action<IDictionary<string, object>>, List<IDictionary<string, object>>> PostProcessFunctions = new Dictionary<Action<IDictionary<string, object>>, List<IDictionary<string, object>>>();

        /// <summary>
        /// Adds a post processing function for a given object
        /// </summary>
        private static void AddPostProcessing(Action<IDictionary<string, object>> act, IDictionary<string, object> obj)
        {
            if (!PostProcessFunctions.TryGetValue(act, out var objs))
            {
                PostProcessFunctions[act] = objs = new List<IDictionary<string, object>>();
            }

            objs.Add(obj);
        }

        /// <summary>
        /// Process all of the data loaded into the database.
        /// </summary>
        public static void Process()
        {
            // Combine DB information
            // Achievements
            if (TypeDB.TryGetValue("Achievement", out IDictionary<long, IDBType> wagoAchDb))
            {
                MergeAchievementDB(wagoAchDb.Values.Select(i => i.AsData()), true);
            }

            // Items
            if (TypeDB.TryGetValue("Item", out IDictionary<long, IDBType> wagoItemDb))
            {
                MergeItemDB(wagoItemDb.Values.Select(i => i.AsData()));
            }

            // Item Search Name (Quality, Required Skills, Item Level, Race/Class Requirements)
            if (TypeDB.TryGetValue("ItemSearchName", out IDictionary<long, IDBType> wagoItemSearchDb))
            {
                MergeItemDB(wagoItemSearchDb.Values.Select(i => i.AsData()));
            }

            // GlyphGB
            if (TypeDB.TryGetValue("GlyphProperties", out IDictionary<long, IDBType> wagoGlyphDb))
            {
                foreach (var obj in wagoGlyphDb.Values)
                {
                    if (obj is GlyphProperties glyph)
                    {
                        GlyphDB[glyph.ID] = glyph.SpellID;
                    }
                }
            }

            // FlightPathNames (FlightPathDB)
            if (TypeDB.TryGetValue("TaxiNodes", out IDictionary<long, IDBType> wagoFlightPathDB))
            {
                foreach (var obj in wagoFlightPathDB.Values)
                {
                    if (obj is TaxiNodes fp)
                    {
                        string englishName = fp.Name_lang;
                        if (!string.IsNullOrEmpty(englishName))
                        {
                            if (!FlightPathDB.TryGetValue(fp.ID, out var flightPath))
                            {
                                FlightPathDB[fp.ID] = flightPath = new Dictionary<string, object>();
                            }
                            flightPath["text"] = new Dictionary<string, object>
                            {
                                { "en", englishName.Trim() }
                            };
                        }
                    }
                }
            }

            // Go through all of the items in the database and calculate the Filter ID
            // if the Filter ID is not already assigned. (manual assignment should always override this)
            foreach (var data in Items.AllItems)
            {
                Objects.AssignFilterID(data);

                // verify that no source is included for items which should explicitly ignoreSource
                if (data.TryGetValue("ignoreSource", out bool ig) && ig)
                {
                    data.Remove("sourceID");
                    data.Remove("modIDs");
                    data.Remove("modID");
                    data.Remove("bonusIDs");
                    data.Remove("bonusID");
                }
            }

            // Merge the Item Data into the Containers.
            CurrentParseStage = ParseStage.Validation;
            Validator.OnlyClean = (bool)Config["Validation"]["clean"];
            ProcessingFunction = DataValidation;
            foreach (var container in Objects.AllContainers)
            {
                ProcessContainer(container);
            }

            // Capture Conditional DB data into the global DBs, and then merge that data into the respective Objects
            CurrentParseStage = ParseStage.ConditionalData;
            AdditionalProcessing();

            ProcessingFunction = DataConditionalMerge;
            foreach (var container in Objects.AllContainers)
            {
                ProcessContainer(container);
            }

            // Incorporate external or other DB information into the Objects
            CurrentParseStage = ParseStage.Incorporation;
            ProcessingFunction = DataIncorporation;
            foreach (var container in Objects.AllContainers)
            {
                ProcessContainer(container);
            }

            // Pass to clean up and consolidate final information within Objects
            CurrentParseStage = ParseStage.Consolidation;
            Validator.OnlyClean = true;
            ProcessingFunction = DataConsolidation;
            foreach (var container in Objects.AllContainers)
            {
                ProcessContainer(container);
            }

            // Post-processing of individual groups in parallel (logic which does not require cross-modification or follow up processing)
            CurrentParseStage = ParseStage.PostProcessing;
            foreach (var actionSequence in PostProcessFunctions)
            {
                var act = actionSequence.Key;
                if (Debugger.IsAttached)
                {
                    actionSequence.Value.ForEach(act);
                }
                else
                {
                    actionSequence.Value.AsParallel().ForAll(act);
                }
            }

            // Sort World Drops by Name
            var worldDrops = Objects.GetNull("WorldDrops");
            if (worldDrops != null) SortByName(worldDrops);

            // Build the Unsorted Container.
            CurrentParseStage = ParseStage.UnsortedGeneration;
            List<object> listing;
            long requireSkill;
            if (!Objects.AllContainers.TryGetValue("Unsorted", out List<object> unsorted))
            {
                Objects.AllContainers["Unsorted"] = unsorted = new List<object>();
            }
            var expansionLists = new Dictionary<int, TierList>();
            int maxExpansionID = 11;// LAST_EXPANSION_PATCH[CURRENT_RELEASE_PHASE_NAME][0];
            for (int expansionID = 1; expansionID <= maxExpansionID; ++expansionID)
            {
                // ensure the expansion group exists
                Objects.Merge(unsorted, new Dictionary<string, object>
                    {
                        { "expansionID", expansionID },
                        { "g", new List<object>() },
                    });
                // grab the resulting expansion group 'g' list
                unsorted.FindObject("expansionID", expansionID).TryGetValue("g", out listing);
                // create a new ExpansionList object tracking the specified g listing
                expansionLists[expansionID] = new TierList
                {
                    Groups = listing
                };
            }
            TierList expansion = expansionLists[1];
            var moreThanOne = expansionLists.Count > 1;
            foreach (var item in Items.AllItemsWithoutReferences)
            {
                if (moreThanOne)
                {
                    var level = GetDataMinLevel(item);
                    // try to sort by itemID
                    if (item.TryGetValue("itemID", out long itemID))
                    {
                        if (itemID < 22727) expansion = expansionLists[1]; // Classic
                        else if (itemID < 29205) expansion = expansionLists[2];   // Burning Crusade
                        else if (itemID < 37649) expansion = expansionLists[3];   // Wrath of the Lich King
                        else if (itemID < 72019) expansion = expansionLists[4];   // Cataclysm
                        else if (itemID < 100855) expansion = expansionLists[5];   // Mists of Pandaria
                        else if (itemID < 130731) expansion = expansionLists[6];   // Warlords of Draenor
                        else if (itemID < 156823) expansion = expansionLists[7];   // Legion
                        else if (itemID < 174366) expansion = expansionLists[8];   // Battle For Azeroth
                        else if (itemID < 190311) expansion = expansionLists[9];   // Shadowlands
                        else if (itemID < 226145) expansion = expansionLists[10];   // Dragonflight
                        else expansion = expansionLists[11];   // The War Within
                    }
                    // sort by level into expansion if not an item
                    else if (level.HasValue)
                    {
                        if (level <= 25) expansion = expansionLists[1]; // Classic
                        else if (level <= 27) expansion = expansionLists[2];   // Burning Crusade
                        else if (level <= 30) expansion = expansionLists[3];   // Wrath of the Lich King
                        else if (level <= 32) expansion = expansionLists[4];   // Cataclysm
                        else if (level <= 35) expansion = expansionLists[5];   // Mists of Pandaria
                        else if (level <= 40) expansion = expansionLists[6];   // Warlords of Draenor
                        else if (level <= 45) expansion = expansionLists[7];   // Legion
                        else if (level <= 50) expansion = expansionLists[8];   // Battle For Azeroth
                        else if (level <= 60) expansion = expansionLists[9];   // Shadowlands
                        else if (level <= 70) expansion = expansionLists[10];   // Dragonflight
                        else expansion = expansionLists[11];   // The War Within
                    }
                    // default expansion assignment
                    else expansion = expansionLists[1];
                }

                if (item.TryGetValue("f", out long filterID) && filterID >= 0 && (filterID < 56 || filterID > 90))
                {
                    Objects.Filters filter = (Objects.Filters)filterID;
                    item.TryGetValue("q", out long quality);
                    switch (filter)
                    {
                        case Objects.Filters.Invalid:
                        case Objects.Filters.Ignored:
                        case Objects.Filters.Quest:
                        case Objects.Filters.Holiday:
                            // specific types we don't really care to Source unless they are actually determined to be useful
                            break;
                        case Objects.Filters.Recipe:
                            {
                                if (!expansion.FilteredLists.TryGetValue(filterID, out listing))
                                {
                                    expansion.Groups.Add(new Dictionary<string, object>
                                    {
                                        { "f", filterID },
                                        { "g", listing = expansion.FilteredLists[filterID] = new List<object>() }
                                    });
                                }
                                if (item.TryGetValue("requireSkill", out object requireSkillRef))
                                {
                                    requireSkill = Convert.ToInt64(requireSkillRef);
                                    if (!expansion.ProfessionLists.TryGetValue(requireSkill, out List<object> sublisting))
                                    {
                                        listing.Add(new Dictionary<string, object>
                                        {
                                            {"professionID", requireSkill },
                                            { "g", listing = expansion.ProfessionLists[requireSkill] = new List<object>() }
                                        });
                                    }
                                    else
                                    {
                                        listing = sublisting;
                                    }
                                }
                                else
                                {
                                    if (!expansion.ProfessionLists.TryGetValue(-1, out List<object> sublisting))
                                    {
                                        listing.Add(new Dictionary<string, object>
                                        {
                                            { "f", (int)Objects.Filters.Miscellaneous },
                                            { "g", listing = expansion.ProfessionLists[-1] = new List<object>() }
                                        });
                                    }
                                    else
                                    {
                                        listing = sublisting;
                                    }
                                }

                                if (item.TryGetValue("itemID", out long itemID))
                                {
                                    var newItem = new Dictionary<string, object>
                                    {
                                        {"itemID", itemID },
                                    };
                                    Items.MergeInto(itemID, item, newItem);
                                    Items.DetermineSourceID(newItem);
                                    listing.Add(newItem);
                                }
                                break;
                            }
                        default:
                            {
                                switch (filter)
                                {
                                    case Objects.Filters.Consumable:
                                        // ignore white/grey consumables from going into unsorted
                                        if (quality < 2)
                                            continue;
                                        break;
                                }
                                item.Remove("spellID");
                                if (!expansion.FilteredLists.TryGetValue(filterID, out listing))
                                {
                                    expansion.Groups.Add(new Dictionary<string, object>
                                    {
                                        { "f", filterID },
                                        { "g", listing = expansion.FilteredLists[filterID] = new List<object>() }
                                    });
                                }

                                if (item.TryGetValue("itemID", out long itemID))
                                {
                                    var newItem = new Dictionary<string, object>
                                    {
                                        {"itemID", itemID },
                                    };
                                    Items.MergeInto(itemID, item, newItem);
                                    Items.DetermineSourceID(newItem);
                                    listing.Add(newItem);
                                }
                                break;
                            }
                    }
                }
            }

            // Remove empty Data Phase tiers.
            //int dataPhase = LAST_EXPANSION_PATCH[CURRENT_RELEASE_PHASE_NAME][0];
            for (int i = unsorted.Count - 1; i >= 0; --i)
            {
                var o = unsorted[i] as IDictionary<string, object>;
                if (o == null) continue;
                if (o.TryGetValue("g", out List<object> list) && list.Count == 0)
                {
                    unsorted.RemoveAt(i);
                }
                // Data Phase doesn't include the current Unsorted Tier
                //if (dataPhase < i)
                //{
                //    unsorted.RemoveAt(i);
                //}
            }
            if (unsorted.Count == 1)
            {
                var o = unsorted[0] as IDictionary<string, object>;
                if (o != null && o.TryGetValue("g", out List<object> list))
                {
                    Objects.AllContainers["Unsorted"] = list;
                }
            }

            CurrentParseStage = ParseStage.DataIntegrityAnalysis;
            // Include in breadcrumb quests the list of next quests that may make the breadcrumb unable to complete
            //bool isBreadcrumb;
            HashSet<decimal> orphanedBreadcrumbs = new HashSet<decimal>();
            OutputSets.Add("Orphaned Breadcrumbs", orphanedBreadcrumbs);

            // check for orphaned breadcrumbs
            foreach (var pair in Objects.AllQuests)
            {
                if (pair.Value.TryGetValue("isBreadcrumb", out bool isBreadcrumb)
                    && isBreadcrumb
                    && !pair.Value.TryGetValue("nextQuests", out object nextQuests))
                {
                    // Breadcrumb quest without next quests information
                    orphanedBreadcrumbs.Add(pair.Key);
                }
            }

            if (QUESTS.Any())
            {
                var unsortedQuests = new List<object>();
                long maxQuestID = QUESTS.Max(x => x.Key);
                for (long i = 1; i <= maxQuestID; i++)
                {
                    // add any quest information which is not sourced/referenced but includes more than just a questID into the Unsorted category
                    if (!TryGetSOURCED("questID", i, out var sourcedQuests)
                        && !QUESTS_WITH_REFERENCES.ContainsKey(i)
                        && QUESTS.TryGetValue(i, out IDictionary<string, object> questRef))
                    {
                        var entry = new Dictionary<string, object>() { { "questID", i } };

                        // put some API metadata as a Description (since no description tag will exist for unsorted quests) to help identify the quest source/purpose
                        questRef.TryGetValue("_type", out string qType);
                        questRef.TryGetValue("_area", out string qArea);
                        questRef.TryGetValue("_category", out string qCategory);
                        questRef.TryGetValue("_text", out string qText);

                        List<string> metaData = new List<string>();
                        if (qText != null)
                        {
                            if (!entry.ContainsKey("name"))
                                entry["name"] = qText;

                            metaData.Add("Name: |cFFf09f26" + qText + "|r");
                        }
                        if (qType != null)
                            metaData.Add("Type: |cFFf09f26" + qType + "|r");
                        if (qArea != null)
                            metaData.Add("Area: |cFFf09f26" + qArea + "|r");
                        if (qCategory != null)
                            metaData.Add("Category: |cFFf09f26" + qCategory + "|r");

                        if (metaData.Any())
                            questRef["description"] = string.Join("\n", metaData);

                        // merge any quest information from the quest DB so that field names in the questRef are accurate
                        Objects.Merge(entry, questRef);
                        // dont bother adding quests which literally have nothing useful in them
                        if (entry.Count > 1)
                        {
                            Consolidate_lvl(entry);
                            unsortedQuests.Add(entry);
                        }
                    }
                }
                if (unsortedQuests.Count > 0)
                {
                    if (CUSTOM_HEADER_CONSTANTS.TryGetValue("QUESTS", out long value))
                    {
                        Objects.Merge(unsorted, new Dictionary<string, object>
                        {
                            { "npcID", value },
                            { "g", unsortedQuests },
                        });
                    }
                    else
                    {
                        LogWarn("COULD NOT FIND CONSTANT VALUE FOR 'QUESTS'!");
                        Objects.Merge(unsorted, unsortedQuests);
                    }
                }
            }

            // Notify of Post-Process Merge data which failed to merge...
            Objects.NotifyPostProcessMergeFailures();
        }

        private static void ProcessContainer(KeyValuePair<string, List<object>> container)
        {
            switch (container.Key)
            {
                // don't process uncollectibles in the normal way
                case "Uncollectible":
                    return;
                default:
                    break;
            }

            ProcessingAchievementCategory = container.Key == "Achievements";
            ProcessingUnsortedCategory = container.Key.Contains("HiddenAchievementTriggers") ||
                                        container.Key.Contains("HiddenCurrencyTriggers") ||
                                        container.Key.Contains("HiddenQuestTriggers") ||
                                        container.Key.Contains("NeverImplemented") ||
                                        container.Key.Contains("Uncollectible") ||
                                        container.Key.Contains("Sourceless") ||
                                        container.Key.Contains("Unsorted");
            ProcessingNYICategory = container.Key.Contains("NeverImplemented") ||
                                    container.Key.Contains("NYI");

            Dictionary<string, object> fakeRoot = new Dictionary<string, object>();
            Process(container.Value, fakeRoot);
        }

        /// <summary>
        /// Does additional processing after the first pass of processing has completed
        /// </summary>
        private static void AdditionalProcessing()
        {
            // Mark uncollectibles & warn if Sourced
            if (Objects.AllContainers.TryGetValue("Uncollectible", out List<object> objects))
            {
                foreach (object itemObj in objects)
                {
                    if (itemObj is IDictionary<string, object> item)
                    {
                        // Capture references to specified Debug DB keys for Debug output
                        CaptureDebugDBData(item);
                        decimal itemID = Items.GetSpecificItemID(item);
                        if (Items.IsItemReferenced(itemID))
                        {
                            LogDebug($"INFO: Item {itemID} is referenced and also included in Uncollectible.lua");
                        }
                        else
                        {
                            Items.MarkItemAsReferenced(itemID);
                        }
                    }
                }

                Objects.AllContainers.Remove("Uncollectible");
            }

            // Clean out any temporary containers
            string[] temporaryKeys = Objects.AllContainers.Keys.Where(k => k.StartsWith("_")).ToArray();
            temporaryKeys.All(k => Objects.AllContainers.Remove(k));

            // Merge conditional data
            foreach (var data in ConditionalItemData)
            {
                Objects.AssignFilterID(data);
                Items.Merge(data, true);
            }

            // Go through and merge all of the item species data into the item containers.
            foreach (var pair in Items.AllItemsWithSpecies)
            {
                var item = Items.GetNull(pair.Key);
                if (item != null) Items.MergeInto(pair.Key, pair.Value, item);
            }
        }

        /// <summary>
        /// Process a list of data containers.
        /// </summary>
        /// <param name="list">The data container list.</param>
        private static void Process(List<object> list, IDictionary<string, object> parentData)
        {
            // Check to make sure the data is valid.
            if (list == null) return;

            // Iterate through the list and process all of the relative data dictionaries.
            for (int i = list.Count - 1; i >= 0; --i)
            {
                if (!Process(list[i] as IDictionary<string, object>, parentData)) list.RemoveAt(i);
            }
        }

        /// <summary>
        /// Process a data container.
        /// </summary>
        /// <param name="data">The data container.</param>
        ///
        /// <returns>Whether or not the data is valid.</returns>
        private static bool Process(IDictionary<string, object> data, IDictionary<string, object> parentData)
        {
            // Check to make sure the data is valid.
            if (data == null) return false;


            if (DebugMode && MergeItemData)
            {
                // Capture references to specified Debug DB keys for Debug output
                CaptureDebugDBData(data);
            }

            // Cache the state of values that are inherited from parent objects to their children.

            var cachedDifficultyRoot = DifficultyRoot;
            long cachedDifficulty = NestedDifficultyID;
            long cachedHeaderID = NestedHeaderID;
            long cachedItemAppearanceModifierID = NestedItemAppearanceModifierID;
            long cachedBonusID = NestedBonusID;
            long cachedModID = NestedModID;

            // Track the hierarchy of difficultyID
            if ((data.TryGetValue("_multiDifficultyID", out long nestedDiffID) || data.TryGetValue("difficultyID", out nestedDiffID)) && nestedDiffID != NestedDifficultyID)
            {
                DifficultyRoot = data;
                NestedDifficultyID = nestedDiffID;
            }

            // Update the modID and associated ItemAppearanceModifierID
            if (data.TryGetValue("modID", out long nestedModID) && nestedModID != NestedModID)
            {
                NestedModID = nestedModID;
                if (ItemAppearanceModifierIDs_ModID.TryGetValue(NestedModID, out var id)) NestedItemAppearanceModifierID = id;
            }

            // Update the bonusID and associated ItemAppearanceModifierID
            if (data.TryGetValue("bonusID", out long nestedBonusID) && nestedBonusID != NestedBonusID)
            {
                NestedBonusID = nestedBonusID;
                if (ItemAppearanceModifierIDs_BonusID.TryGetValue(NestedBonusID, out var id)) NestedItemAppearanceModifierID = id;
            }

            // An explicitly defined value trumps the others.
            if (data.TryGetValue("ItemAppearanceModifierID", out long nestedItemAppearanceModifierID))
            {
                NestedItemAppearanceModifierID = nestedItemAppearanceModifierID;
            }

            // Track the hierarchy of headerID
            // NOTE: Once autoID no longer clashes with headerID and npcID is no longer dumb, use headerID instead.
            if (data.TryGetValue("npcID", out long npcID) && npcID < 0 && long.TryParse(npcID.ToString(), out long headerID))
            {
                NestedHeaderID = headerID;
            }

            // Report context changes.
            bool cachedShouldReportContextChanges = ShouldReportContextChanges;
            long cachedContextReportDepth = ContextReportDepth;
            /*
            if (!cachedShouldReportContextChanges && NestedDifficultyID == 23 && Framework.CurrentParseStage == ParseStage.Consolidation)
            {
                ShouldReportContextChanges = true;
                LogWarn("Report Start: ", data);
            }
            */
            var cachedChangedDetected = NestedHeaderID != cachedHeaderID || NestedDifficultyID != cachedDifficulty
                    || NestedModID != cachedModID || NestedBonusID != cachedBonusID || NestedItemAppearanceModifierID != cachedItemAppearanceModifierID;
            if (ShouldReportContextChanges)
            {
                ContextReportDepth++;
                if (cachedChangedDetected)
                {
                    var builder = new StringBuilder($">> [Context {NestedDifficultyID}, {NestedModID}, {NestedBonusID}, {NestedItemAppearanceModifierID}]");
                    for (var i = 0; i < ContextReportDepth; i++) builder.Insert(0, ' ');
                    LogWarn(builder.ToString());
                }
            }

            /*
            if (NestedHeaderID != cachedHeaderID) LogDebug($"INFO: Entered HeaderID Context: {NestedHeaderID}");
            if (NestedDifficultyID != cachedDifficulty) LogDebug($"INFO: Entered DifficultyID Context: {NestedDifficultyID}");
            if (NestedModID != cachedModID) LogDebug($"INFO: Entered ModID Context: {NestedModID}");
            if (NestedBonusID != cachedBonusID) LogDebug($"INFO: Entered BonusID Context: {NestedBonusID}");
            if (NestedItemAppearanceModifierID != cachedItemAppearanceModifierID) LogDebug($"INFO: Entered ItemAppearanceModifierID Context: {NestedItemAppearanceModifierID}");
            */

            // handle the current processing against the data
            bool success = true;
            if (ProcessingFunction(data, parentData))
            {
                // If this container has an aqd or hqd, then process those objects as well.
                if (data.TryGetValue("aqd", out IDictionary<string, object> qd)) Process(qd, data);
                if (data.TryGetValue("hqd", out qd)) Process(qd, data);

                // If this container has groups, then process those groups as well.
                if (data.TryGetValue("g", out List<object> groups))
                {
                    // Cache the state of values that are inherited from parent objects to their children.
                    var cachedParentGroup = CurrentParentGroup;
                    long cachedMinLevel = NestedMinLvl;

                    // Track the hierarchy of lvl
                    long? dataLvl = GetDataMinLevel(data);
                    if (dataLvl.HasValue && dataLvl > NestedMinLvl) NestedMinLvl = dataLvl.Value;
                    /*
                    if (NestedMinLvl != cachedMinLevel) LogDebug($"INFO: Entered MinLevel Context: {NestedMinLvl}");
                    */

                    // Update the Current Parent Group
                    if (ObjectData.TryGetMostSignificantObjectType(data, out ObjectData objectData, out object objKeyValue))
                        CurrentParentGroup = new KeyValuePair<string, object>(objectData.ObjectType, objKeyValue);

                    // Process all relative groups to this object.
                    Process(groups, data);

                    // Parent field consolidation now that groups have been processed
                    if (CurrentParseStage >= ParseStage.Consolidation)
                        HierarchicalFieldAdjustments.Apply(data, groups);

                    /*
                    if (NestedMinLvl != cachedMinLevel) LogDebug($"INFO: Left MinLevel Context: {NestedMinLvl}");
                    */

                    // Restore Previous Context
                    NestedMinLvl = cachedMinLevel;
                    CurrentParentGroup = cachedParentGroup;
                }
            }
            else success = false;

            /*
            if (NestedItemAppearanceModifierID != cachedItemAppearanceModifierID) LogDebug($"INFO: Left ItemAppearanceModifierID Context: {NestedItemAppearanceModifierID}");
            if (NestedBonusID != cachedBonusID) LogDebug($"INFO: Left BonusID Context: {NestedBonusID}");
            if (NestedModID != cachedModID) LogDebug($"INFO: Left ModID Context: {NestedModID}");
            if (NestedDifficultyID != cachedDifficulty) LogDebug($"INFO: Left DifficultyID Context: {NestedDifficultyID}");
            if (NestedHeaderID != cachedHeaderID) LogDebug($"INFO: Left HeaderID Context: {NestedHeaderID}");
            */

            // Restore the Cached Context of the parent object.
            NestedModID = cachedModID;
            NestedBonusID = cachedBonusID;
            NestedItemAppearanceModifierID = cachedItemAppearanceModifierID;
            NestedHeaderID = cachedHeaderID;
            NestedDifficultyID = cachedDifficulty;
            DifficultyRoot = cachedDifficultyRoot;

            // Report context changes.
            if (ShouldReportContextChanges)
            {
                if (cachedChangedDetected)
                {
                    var builder = new StringBuilder($"<< [Context {NestedDifficultyID}, {NestedModID}, {NestedBonusID}, {NestedItemAppearanceModifierID}]");
                    for (var i = 0; i < ContextReportDepth; i++) builder.Insert(0, ' ');
                    LogWarn(builder.ToString());
                }
            }
            ContextReportDepth = cachedContextReportDepth;
            ShouldReportContextChanges = cachedShouldReportContextChanges;

            return success;
        }

        private static void CaptureDebugDBData(IDictionary<string, object> data)
        {
            foreach (KeyValuePair<string, ConcurrentDictionary<decimal, IDictionary<string, object>>> dbKeyDatas in DebugDBs)
            {
                if (data.TryGetValue(dbKeyDatas.Key, out decimal keyValue) || dbKeyDatas.Key == "questID" && (
                    data.TryGetValue("questIDA", out keyValue) || data.TryGetValue("questIDA", out keyValue)) && keyValue > 0)
                {
                    if (!dbKeyDatas.Value.TryGetValue(keyValue, out IDictionary<string, object> keyValueValues))
                        dbKeyDatas.Value[keyValue] = keyValueValues = new Dictionary<string, object>();

                    Dictionary<string, object> clone = new Dictionary<string, object>(data);
                    clone.Remove("g");
                    // cost can be variable so don't merge into Debug DBs
                    clone.Remove("cost");
                    // special case for criteria, to list under their achievement instead of into it since they contain the same achID
                    if (data.ContainsKey("criteriaID"))
                    {
                        Objects.Merge(keyValueValues, "g", clone);
                    }
                    else
                    {
                        Objects.Merge(keyValueValues, clone);
                    }
                }
            }
        }

        /// <summary>
        /// Logic on the first pass of processing all the data:<para/>
        /// * Merging into global type dictionaries<para/>
        /// * Validation of raw data<para/>
        /// </summary>
        /// <param name="data"></param>
        private static bool DataValidation(IDictionary<string, object> data, IDictionary<string, object> parentData)
        {
            // Retail has no reason to include Objective groups since the in-game Quest system does not warrant ATT including all this extra information
            // Crieve wants objectives and doesn't agree with this, but will allow it outside of Classic Builds.
            if (data.ContainsKey("objectiveID") && !Program.PreProcessorTags.ContainsKey("OBJECTIVES"))
            {
                // capture the parent relationship here since we are removing the objective data
                data["_parent"] = parentData;
                AddPostProcessing(ConvertObjectiveData, data);
                return false;
            }

            Validate_InheritedFields(data, parentData);

            if (!data.ContainsKey("timeline"))
            {
                // Some objects have a default timeline applied, but this prevents sharedData/bubbleDown from having effect...
                // Instead let's wrap this in a '_defaulttimeline' field and switch it to the 'timeline' field here if there ends up being no 'timeline'
                if (data.TryGetValue("_defaulttimeline", out object defTimeline))
                {
                    LogDebugWarn($"Default Timeline used! {ToJSON(defTimeline)} Consider adding an accurate 'timeline' field", data);
                    Timeline.Merge(data, defTimeline);
                }
            }

            // verify the timeline data of Merged data (can prevent keeping the data in the data container)
            if (!CheckTimeline(data, parentData))
                return false;

            Validate_General(data);

            Validate_npc(data);
            Validate_Encounter(data);
            Validate_sym(data);
            Validate_providers(data);

            Validate_Achievement(data);
            Validate_Criteria(data);
            Validate_LocationData(data);
            Validate_Quest(data);

            Validate_LocalizableData(data);
            Validate_ReferencedIDs(data);

            // If this item has an "unobtainable" flag on it, meaning for a different phase of content.
            if (data.TryGetValue("u", out long phase))
            {
                if (phase > MAX_PHASE_ID && !(phase >= 1000 && (phase < (MAX_PHASE_ID + 1) * 100)))
                {
                    data.Remove("g");
                    //Trace.Write("Excluding ");
                    //Log(ToJSON(data));
                    return false;
                }

                if (Phases != null && !Phases.ContainsKey(phase))
                {
                    LogError($"Undefined Phase '{phase}', please make sure a phase definition exists in the .contrib/lib/Constants/Phases.lua file.");
                }
                else MarkPhaseAsRequired(phase);
            }

            if (data.ContainsKey("ignoreBonus"))
            {
                // will be removed later
                data.Remove("modID");
                data.Remove("bonusID");
                NestedBonusID = 0L;
                NestedModID = 0L;
                NestedItemAppearanceModifierID = 0L;
                //Log("Removed ignoreBonus modID", data.GetString("itemID"));
            }
            else
            {
                // Apply the inherited modID for items which do not specify their own modID
                if (NestedModID > 0 && data.ContainsKey("itemID") && !data.ContainsKey("modID"))
                {
                    //LogDebug($"INFO: Applied inherited modID {NestedModID} for item {data.GetString("itemID")}");
                    data["modID"] = NestedModID;
                }
            }

            foreach (KeyValuePair<string, object> value in data.ToList())
            {
                // validate any IProcessedField
                if (value.Value is IProcessedField validatedField)
                {
                    validatedField.Validate();
                }
            }

            // Mark this item as having a reference since it exists in a processed container
            Items.MarkItemAsReferenced(data);

            // Merge all relevant Data into the global dictionaries after being validated
            // TODO: This will be removed eventually. Global content needs to have a Global DB source
            Items.MergeFromObject(data);
            Objects.MergeFromObject(data);

            return true;
        }

        private static void DoConditionalDataMerging(IDictionary<string, object> data)
        {
            Items.MergeInto(data);
            Objects.MergeSharedDataIntoObject(data);

            // ensure the FilterID for this data is double-checked after merging in the shared data
            Objects.AssignFilterID(data);
            Objects.AssignFactionID(data);

            // Currently, this merges in data from actual Recipes to other non-Recipe Items which are linked to the same SpellID
            // i.e. /att i:200037 causing them to magically become Recipes!
            // Luckily, we don't overwrite existing fields, so we can strip out fields based on Filter types afterwards...
        }

        /// <summary>
        /// Logic which incoporates conditional DB data into Objects and captures the extent of SOURCED fields for each Object
        /// </summary>
        private static bool DataConditionalMerge(IDictionary<string, object> data, IDictionary<string, object> parentData)
        {
            // Merge all relevant dictionary info into the data
            DoConditionalDataMerging(data);

            // capture the data for sourced groups (i.e. contains the field)
            CaptureForSOURCED(data);

            return true;
        }

        /// <summary>
        /// Logic which incoporates various DB data, and can move data between containers
        /// </summary>
        private static bool DataIncorporation(IDictionary<string, object> data, IDictionary<string, object> parentData)
        {
            // don't bother incorporating data for unsorted content
            if (ProcessingUnsortedCategory)
                return true;

            Incorporate_Achievement(data);
            Incorporate_Criteria(data);
            // Handles Item->Spell->SpellEffect incorporation
            Incorporate_Item(data);
            // Handles Spell->SpellEffect incorporation
            Incorporate_Spell(data);
            Incorporate_Ensemble(data);

            bool cloned = Incorporate_DataCloning(data);

            // specifically Achievement Criteria that is cloned to another location in the addon should not be maintained where it was cloned from
            if (cloned && data.ContainsKey("criteriaID"))
                return false;

            // capture the data for sourced groups (i.e. contains the field)
            CaptureForSOURCED(data);

            return true;
        }

        /// <summary>
        /// Logic on the last pass of processing all the data.<para/>
        /// * Consolidation of dictionary information into sourced data
        /// </summary>
        /// <param name="data"></param>
        private static bool DataConsolidation(IDictionary<string, object> data, IDictionary<string, object> parentData)
        {
            // eariler in the processing we may realize that data is not useful, and can mark it to be removed
            if (data.TryGetValue("_remove", out bool remove) && remove)
                return false;

            Objects.PerformWipes(data);

            // Finally post-merge anything which is supposed to merge into this group now that it (and its children) have been fully validated
            Objects.PostProcessMergeInto(data);

            // verify the timeline data of Merged data (can prevent keeping the data in the data container)
            if (!CheckTimeline(data, parentData))
                return false;

            Consolidate_General(data);

            Consolidate_lvl(data);
            Consolidate_c(data);
            Consolidate_providers(data);
            Consolidate_sourceQuests(data);
            Consolidate_altQuests(data);
            Consolidate_item(data);
            Consolidate_awprwp(data);

            // since early 2020, the API no longer associates recipe Items with their corresponding Spell... because Blizzard hates us
            // so try to automatically associate the matching recipeID from the requiredSkill profession list to the matching item...
            TryFindRecipeID(data);
            CheckRequireSkill(data);
            CheckHeirloom(data);
            CheckTrackableFields(data);
            CheckRequiredDataRelationships(data);

            //if (data.TryGetValue("itemID", out long testitemid) && testitemid == 50169)
            //{

            //}
            Items.DetermineSourceID(data);
            Objects.AssignFactionID(data);

            CheckObjectConversion(data);

            data.TryGetValue("g", out List<object> g);
            int subGroupCount = g?.Count ?? 0;
            // no sub-groups
            if (subGroupCount == 0)
            {
                // certain types with empty groups shouldn't be included
                if (data.TryGetValue("achievementCategoryID", out long achievementCategoryID))
                {
                    Log($"INFO: Sourced Achievement Category {achievementCategoryID} contained no content after Parsing", data);
                    return false;
                }
                // headers with nothing in them and no relevant data shouldn't be included
                //if (data.TryGetValue("headerID", out long headerID) && headerID < 0 && !data.ContainsKey("sym") && !data.ContainsKey("questID"))
                //{
                //    LogDebug($"INFO: Sourced Header {headerID} contained no content after Parsing", data);
                //    return false;
                //}
            }

            Consolidate_ConflictingFields(data);

            //VerifyListContentOrdering(data);

            // when consolidating data, check for duplicate objects (instead of when merging)
            foreach (string key in TypeUseCounts.Keys)
            {
                if (data.TryGetValue(key, out decimal id))
                {
                    IncrementTypeUseCount(key, id);
                }
                else if (key == "questID")
                {
                    if (data.TryGetValue("questIDA", out id))
                        IncrementTypeUseCount(key, id);
                    if (data.TryGetValue("questIDH", out id))
                        IncrementTypeUseCount(key, id);
                }
            }

            // only clean the name after other processing is complete
            if (data.TryGetValue("name", out string name))
            {
                // Determine the Most-Significant ID Type (itemID, questID, npcID, etc)
                if (ObjectData.TryGetMostSignificantObjectType(data, out ObjectData objectData, out object objKeyValue) && objKeyValue.TryConvert(out long id))
                {
                    // Store the name of this object (or whatever it is) in our table.
                    if (!NAMES_BY_TYPE.TryGetValue(objectData.ObjectType, out Dictionary<long, string> names))
                    {
                        NAMES_BY_TYPE[objectData.ObjectType] = names = new Dictionary<long, string>();
                    }
                    names[id] = name;

                    // only certain types we will auto-localize, so remove the raw 'name' field
                    if (AutoLocalizeType(objectData.ObjectType))
                    {
                        data.Remove("name");
                    }
                }
            }

            // Get the filter for this Item
            Objects.Filters filter = Objects.Filters.Ignored;
            if (data.TryGetValue("f", out long f))
            {
                if (f >= 0)
                {
                    // Parse it!
                    filter = (Objects.Filters)f;
                    FILTERS_WITH_REFERENCES[f] = true;
                }
                // remove modID/bonusID from things which shouldn't have it
                if (f >= 56)
                {
                    data.Remove("modID");
                    data.Remove("bonusID");
                }

                // special handling for explicitly-defined filterIDs (i.e. not determined by Item data, but rather directly in Source)
                switch (filter)
                {
                    case Objects.Filters.Recipe:
                        // switch any existing spellID to recipeID
                        var item = Items.GetNull(data);
                        if (item != null && item.TryGetValue("spellID", out long spellID) && item.TryGetValue("itemID", out long _))
                        {
                            // remove the spellID/modID/bonusID if existing
                            item.Remove("spellID");
                            data.Remove("spellID");
                            item.Remove("modID");
                            data.Remove("modID");
                            item.Remove("bonusID");
                            data.Remove("bonusID");
                        }
                        break;
                }

                /*
                if (data.TryGetValue("requireSkill", out long  requiredSkill))
                {
                    // if this data has a recipeID, cache the information
                    if (!(data.TryGetValue("recipeID", out long recipeID) || f == 200))
                    {
                        if (data.TryGetValue("itemID", out long itemID))
                        {
                            long b = 0;
                            if (!data.TryGetValue("b", out b) || b != 1)
                            {
                                Console.Write("BoE/Unbound Item (");
                                Console.Write(b);
                                Console.Write(") marked as requiring a profession, but not being a recipe: ");
                                Console.Write(itemID);
                                Console.Write(" (");
                                Console.Write(requiredSkill);
                                Console.WriteLine(")");
                                Console.WriteLine("This is going to cause an issue with folks seeing it in the list when they should.");
                            }
                        }
                    }
                }
                */
            }

            CaptureForSOURCED(data);
            CaptureDebugDBData(data);

            AddPostProcessing(PostProcessingGroupCleanup, data);

            return true;
        }

        private static void Consolidate_c(IDictionary<string, object> data)
        {
            if (!data.TryGetValue("c", out List<object> c)) return;

            if (c.Matches(ALL_CLASSES))
            {
                data.Remove("c");
                LogDebug("INFO: Removed 'c' which is equivalent to ALL_CLASSES", data);
            }
        }

        private static void PostProcessingGroupCleanup(IDictionary<string, object> data)
        {
            List<string> removeKeys = new List<string>();

            // clean out any temporary 'type' fields which do not yet have a corresponding conversion in parser.config
            if (data.TryGetValue("type", out string type) && type == "TODO")
            {
                data.Remove("type");
            }

            if (data.ContainsKey("_unsorted"))
            {
                foreach (var sourcedListByKey in GetAllMatchingSOURCED(data))
                {
                    // check for all _unsorted records in the SOURCED groups
                    if (sourcedListByKey.Any(d => !d.ContainsKey("_unsorted")))
                    {
                        LogDebugWarn($"Unsorted data has also been Sourced", data);
                        break;
                    }
                }
            }

            // check for needed coord shifts on any coords within this group (based on timeline)
            DoShiftCoords(data);

            foreach (KeyValuePair<string, object> dataKvp in data)
            {
                // 'timeline' is removed
                if (dataKvp.Key == "timeline")
                {
                    removeKeys.Add("timeline");
                }
                // parser-only fields removed
                else if (dataKvp.Key.StartsWith("_"))
                {
                    removeKeys.Add(dataKvp.Key);
                }
                // Remove any fields which contain 'empty' lists
                else if (dataKvp.Value is IEnumerable<object> list && !list.Any())
                {
                    removeKeys.Add(dataKvp.Key);
                }
                // Remove IExportableFields which have no data
                else if (dataKvp.Value is IExportableField expField && !expField.HasData)
                {
                    removeKeys.Add(dataKvp.Key);
                }
            }

            foreach (string key in removeKeys)
            {
                data.Remove(key);
            }
        }

        private static void DoShiftCoords(IDictionary<string, object> data)
        {
            if (Objects.MAPID_COORD_SHIFTS.Count > 0 && data.TryGetValue("coords", out List<object> coordsObjs))
            {
                TimelineEntry dataTimelineEntry = null;

                foreach (var coordObj in coordsObjs.AsTypedEnumerable<List<object>>())
                {
                    if (coordObj.SafeIndex(2).TryConvert(out long mapID)
                        && Objects.MAPID_COORD_SHIFTS.TryGetValue(mapID, out CoordShift shiftInfo))
                    {
                        // an applicable shift exists for the mapID of this coord, make sure the timeline of the data
                        // is prior to the shift occurring (old unchanged data => shift, new current data = accurate)
                        if (dataTimelineEntry == null)
                        {
                            data.TryGetValue("timeline", out object timelineObj);
                            if (timelineObj is Timeline dataTimeline)
                            {
                                dataTimelineEntry = dataTimeline.Entries[dataTimeline.CurrentEntry];
                            }
                        }

                        if (dataTimelineEntry != null)
                        {
                            if (dataTimelineEntry.LongVersion >= shiftInfo.TimelineEntry.LongVersion)
                                continue;
                        }
                        else
                        {
                            LogWarn($"Non-Timelined data being coord-shifted due to {ToJSON(shiftInfo)}", data);
                        }

                        if (coordObj[0].TryConvert(out float coordx))
                        {
                            coordObj[0] = coordx + shiftInfo.X;
                        }
                        if (coordObj[1].TryConvert(out float coordy))
                        {
                            coordObj[1] = coordy + shiftInfo.Y;
                        }
                    }
                }
            }
        }

        private static void EnsembleCleanup(IDictionary<string, object> data)
        {
            if (!data.TryGetValue("spellID", out long spellID) && !data.TryGetValue("ensembleSpellID", out spellID))
            {
                LogWarn($"Ensemble Cleanup failed to contain spellID and will be empty when exported!", data);
                return;
            }
            if (!data.TryGetValue("_sourceIDs", out List<object> sourceIDs))
            {
                LogWarn($"Ensemble Cleanup failed to contain _sourceIDs and will be empty when exported!", data);
                return;
            }

            // Ensembles will Source raw Items/Appearances which have no other currently-obtainable source
            // Or will generate a symlink for the duplicated Items/Appearances
            List<IDictionary<string, object>> symlinkSources = new List<IDictionary<string, object>>();
            List<IDictionary<string, object>> rawSources = new List<IDictionary<string, object>>();
            foreach (long sourceID in sourceIDs.AsTypedEnumerable<long>())
            {
                if (TryGetSOURCED("sourceID", sourceID, out HashSet<IDictionary<string, object>> sources)
                    && sources.TryGetAnyMatchingGroup(IsObtainableData, out var matched))
                {
                    // this SourceID is Sourced & Obtainable elsewhere, symlink it to the Ensemble
                    // TODO: eventually use new 'Sourced' implementation so that child elements can indicate via tooltip that they are obtainable
                    // via Ensemble Source without having to be directly listed as a group under that Ensemble
                    symlinkSources.Add(matched);
                }
                else
                {
                    // otherwise it can remain directly listed in the Ensemble
                    if (TryGetTypeDBObjectCollection(sourceID, out List<TransmogSetItem> tmogSetItems, nameof(TransmogSetItem.ItemModifiedAppearanceID)))
                    {
                        IDictionary<string, object> source = tmogSetItems.FirstOrDefault()?.AsData();
                        if (source == null)
                        {
                            LogWarn($"Ensemble via SpellID {spellID} sourcing SourceID {sourceID} which is not associated with a TransmogSetItem", data);
                            source = new TransmogSetItem { ItemModifiedAppearanceID = sourceID }.AsData();
                        }
                        source["_generated"] = true;
                        Items.DetermineItemID(source);
                        // since we may determine an itemID for this data after the ConditionalMerge phase
                        // we need to apply that logic to this data specifically as well
                        // but don't capture that this item is actually sourced within the ensemble
                        DoConditionalDataMerging(source);
                        rawSources.Add(source);
                    }
                }
            }

            // as of later 2024, Blizz seems to have fixed their logic for granting all Appearances in Ensembles, even when Class/Armor restricted! Huzzah
            //RemoveWrongFilterSources(data, spellID, symlinkSources, rawSources);

            // add the raw sources to the ensemble
            foreach (IDictionary<string, object> source in rawSources)
            {
                Objects.Merge(data, "g", source);
                Items.MarkItemAsReferenced(source);
                // Capture references to specified Debug DB keys for Debug output
                CaptureDebugDBData(source);
            }

            if (symlinkSources.Count == 0) return;

            // replace any existing symlink with the raw select
            if (data.ContainsKey("sym"))
            {
                LogWarn($"Manual Ensemble Symlink replaced via automation", data);
            }

            List<object> symlinkCommands = new List<object>
            {
                "select","sourceID"
            };

            symlinkCommands.AddRange(symlinkSources.Select(s => s["sourceID"]));

            data["sym"] = new List<object>
            {
                symlinkCommands
            };

            // Capture the Ensemble for Debug output
            CaptureDebugDBData(data);
        }

        private static void RemoveWrongFilterSources(IDictionary<string, object> data, long ensembleID, List<IDictionary<string, object>> symlinkSources, List<IDictionary<string, object>> rawSources)
        {
            // as of later 2024, Blizz seems to have fixed their logic for granting all Appearances in Ensembles, even when Class/Armor restricted! Huzzah
            return;
            Dictionary<long, int> ensembleFilterCount = new Dictionary<long, int>();
            // track the known filters for the sources
            foreach (IDictionary<string, object> source in symlinkSources.Union(rawSources))
            {
                if (source.TryGetValue("f", out long filterID))
                {
                    if (!ensembleFilterCount.ContainsKey(filterID))
                    {
                        ensembleFilterCount[filterID] = 0;
                    }
                    ensembleFilterCount[filterID]++;
                }
            }

            int filterCount = ensembleFilterCount.Count;
            if (filterCount <= 1) return;

            int totalItems = ensembleFilterCount.Values.Sum();
            if (totalItems <= 5) return;

            int maxItemsPerFilter = ensembleFilterCount.Values.Max();
            // if an ensemble is big enough and grants a majority filterID type of items (i.e. all Plate) then
            // any items which do not meet the filter will be excluded automatically
            // small ensembles or arsenals should not be affected by this case
            if (maxItemsPerFilter <= (totalItems / 2)) return;

            long specificFilter = ensembleFilterCount.First(kvp => kvp.Value == maxItemsPerFilter).Key;
            // Cosmetic-granting ensembles grant appearances for other armor types as well
            if (Ensemble_IgnoredFilterIDs.Contains(specificFilter)) return;

            List<object> removedSymlinked = new List<object>();
            List<object> removedSourced = new List<object>();
            bool CheckRemoval(IDictionary<string, object> s, List<object> removed)
            {
                // Some Filter Type Items are still granted when contained in a different-Filtered Ensemble
                if (s.TryGetValue("f", out long filterID)
                    && filterID != specificFilter
                    && !Ensemble_IgnoredFilterIDs.Contains(filterID))
                {
                    if (s.TryGetValue("itemID", out long itemID))
                    {
                        removed.Add(itemID);
                    }
                    else
                    {
                        removed.Add("s:" + s["sourceID"]);
                    }
                    return true;
                }
                return false;
            };

            int removedSymlinks = symlinkSources.RemoveAll(s => CheckRemoval(s, removedSymlinked));
            int removedRawSources = rawSources.RemoveAll(s => CheckRemoval(s, removedSourced));

            if (removedSymlinks > 0 || removedRawSources > 0)
            {
                LogDebug($"Removed {removedSymlinks} {ToJSON(removedSymlinked)} symlink items & {removedRawSources} {ToJSON(removedSourced)} sourced items from Ensemble {ensembleID} due to incorrect Filter from expected {(Objects.Filters)specificFilter}", data);
            }
        }

        /// <summary>
        /// General validation on contrib-defined data
        /// </summary>
        /// <param name="data"></param>
        private static void Validate_General(IDictionary<string, object> data)
        {
            // dynamic config-driven validaton
            Validator.Validate(data);

            // Explicitly-marked 'non-collectible' Headers should not be necessary and can be warned to convert to Automatic Header type (ignored if it is a quest)
            if (data.TryGetValue("collectible", out bool collectible) && !collectible && !data.ContainsKey("questID") && data.ContainsKey("g"))
            {
                LogDebugWarn($"Explicitly Non-Collectible Header defined. Convert to Automatic Header or adjust as needed", data);
            }

            // If we're processing unsorted, mark those objects
            if (ProcessingUnsortedCategory)
            {
                data["_unsorted"] = true;
            }

            // If we're processing NYI, mark those objects
            if (ProcessingNYICategory)
            {
                data["_nyi"] = true;
            }

            // Don't remove parsed data that contribs have specifically added
            data["_remove"] = false;
        }

        private static bool TryGetSOURCED(string field, object idObj, out HashSet<IDictionary<string, object>> sources)
        {
            if (SOURCED.TryGetValue(field, out Dictionary<long, HashSet<IDictionary<string, object>>> fieldSources)
                && idObj is long id
                && id > 0
                && fieldSources.TryGetValue(id, out sources))
            {
                return true;
            }

            sources = default;
            return false;
        }

        private static IEnumerable<HashSet<IDictionary<string, object>>> GetAllMatchingSOURCED(IDictionary<string, object> data)
        {
            foreach (KeyValuePair<string, object> field in data)
            {
                if (SOURCED.TryGetValue(field.Key, out Dictionary<long, HashSet<IDictionary<string, object>>> fieldSources)
                    && field.Value is long id && id > 0
                    && fieldSources.TryGetValue(id, out HashSet<IDictionary<string, object>> objectSources))
                {
                    yield return objectSources;
                }
            }
        }

        private static IEnumerable<HashSet<IDictionary<string, object>>> GetAllMatchingSOURCED(string field, object idObj)
        {
            if (SOURCED.TryGetValue(field, out Dictionary<long, HashSet<IDictionary<string, object>>> fieldSources)
                && idObj is long id && id > 0
                && fieldSources.TryGetValue(id, out HashSet<IDictionary<string, object>> objectSources))
            {
                yield return objectSources;
            }
        }

        private static void CaptureForSOURCED(IDictionary<string, object> data, string field, object idObj)
        {
            if (SOURCED.TryGetValue(field, out Dictionary<long, HashSet<IDictionary<string, object>>> fieldSources) && idObj is long id && id > 0)
            {
                if (!fieldSources.TryGetValue(id, out HashSet<IDictionary<string, object>> sources))
                {
                    fieldSources[id] = sources = new HashSet<IDictionary<string, object>>();
                }
                sources.Add(data);
            }
        }

        private static void CaptureForSOURCED(IDictionary<string, object> data)
        {
            foreach (var kvp in SOURCED)
            {
                if (data.TryGetValue(kvp.Key, out long id) && id > 0)
                {
                    if (!kvp.Value.TryGetValue(id, out HashSet<IDictionary<string, object>> sources))
                    {
                        kvp.Value[id] = sources = new HashSet<IDictionary<string, object>>();
                    }
                    sources.Add(data);
                }
            }
        }

        private static void Validate_ReferencedIDs(IDictionary<string, object> data)
        {
            if (data.TryGetValue("categoryID", out long categoryID))
                ProcessCategoryObject(data, categoryID);
            if (data.TryGetValue("qg", out long tempId))
            {
                NPCS_WITH_REFERENCES[tempId] = true;
                MarkCustomHeaderAsRequired(tempId);
            }
            if (data.TryGetValue("qgs", out List<object> qgs))
            {
                foreach (var qg in qgs)
                {
                    var id = Convert.ToInt64(qg);
                    NPCS_WITH_REFERENCES[id] = true;
                    MarkCustomHeaderAsRequired(id);
                }
            }
            if (data.TryGetValue("crs", out qgs))
            {
                foreach (var qg in qgs)
                {
                    var id = Convert.ToInt64(qg);
                    NPCS_WITH_REFERENCES[id] = true;
                    MarkCustomHeaderAsRequired(id);
                }
            }
            if (data.TryGetValue("flightpathID", out long flightpathID))
                FLIGHTPATHS_WITH_REFERENCES[flightpathID] = true;
            if (data.TryGetValue("objectID", out tempId))
                OBJECTS_WITH_REFERENCES[tempId] = true;
        }

        private static void Validate_LocalizableData(IDictionary<string, object> data)
        {
            Validate_LocalizableData(data, "name");
            Validate_LocalizableData(data, "title");
            Validate_LocalizableData(data, "description");
            Validate_LocalizableData(data, "lore");

            // raw 'type' field on a 'header' can denote required locale names
            if (data.TryGetValue("headerID", out long headerID) && data.TryGetValue("type", out string type))
            {
                switch (type)
                {
                    case "i":
                        Items.MarkItemAsReferenced(headerID);
                        break;
                    case "n":
                        NPCS_WITH_REFERENCES[headerID] = true;
                        MarkCustomHeaderAsRequired(headerID);
                        break;
                    case "o":
                        OBJECTS_WITH_REFERENCES[headerID] = true;
                        break;
                }
            }
        }

        private static void Validate_LocalizableData(IDictionary<string, object> data, string key)
        {
            if (data.TryGetValue(key, out string text) && text.StartsWith("~H:"))
            {
                var split = text.Split(':');
                var headerID = Convert.ToInt64(split[1]);
                MarkCustomHeaderAsRequired(headerID);
                switch (split.Length > 2 ? split[2].ToLower() : "text")
                {
                    case "description":
                        data[key] = $"~_.L.HEADER_DESCRIPTIONS[{headerID}]";
                        break;
                    case "lore":
                        data[key] = $"~_.L.HEADER_LORE[{headerID}]";
                        break;
                    default:
                        data[key] = $"~_.L.HEADER_NAMES[{headerID}]";
                        break;
                }
            }
        }

        /// <summary>
        /// Validates that 'coord(s)' and 'maps' data is valid
        /// </summary>
        private static void Validate_LocationData(IDictionary<string, object> data)
        {
            // 'coord' is converted to 'coords' already
            if (data.TryGetValue("coords", out List<object> coordsList))
            {
                // check if any coord is not 3 parameters: [ X, Y, MapID ]
                foreach (object coord in coordsList)
                {
                    if (coord is List<object> coordList && coordList.Count != 3)
                    {
                        LogError($"'coord/s' value is not fully qualified: {ToJSON(coord)}", data);
                    }
                }
            }

            // maps & coords
            if (data.TryGetValue("maps", out List<object> maps))
            {
                if (coordsList != null && !data.ContainsKey("instanceID"))
                {
                    List<object> redundant = new List<object>();
                    // check if any coord has a mapID which matches a maps mapID
                    foreach (object coord in coordsList)
                    {
                        if (coord is List<object> coordList && coordList.Count > 2)
                        {
                            var coordMapID = coordList[2];
                            if (maps.TrySmartContains(coordMapID, out object mapsValue))
                            {
                                if (maps.Remove(mapsValue))
                                {
                                    redundant.Add(mapsValue);
                                }
                            }
                        }
                    }

                    // remove the key itself if no mapID values remain
                    if (maps.Count == 0)
                    {
                        data.Remove("maps");
                    }

                    if (redundant.Count > 0)
                    {
                        Log($"WARN: Redundant 'maps' values removed: {ToJSON(redundant)}", data);
                    }
                }

                // single 'maps' for Achievements Sourced under 'Achievements', should be sourced in that specific map directly instead
                if (ProcessingAchievementCategory && maps.Count == 1 && data.TryGetValue("achID", out long achID))
                {
                    Log($"WARN: Single 'maps' value used within Achievement {achID}. It should be Sourced directly in the Location.", data);
                }
            }
        }

        private static void Validate_npc(IDictionary<string, object> data)
        {
            if (data.TryGetValue("creatureID", out long creatureID))
            {
                if (data.TryGetValue("npcID", out object dupeNpcID))
                {
                    LogError($"Both CreatureID {creatureID} and NPCID {dupeNpcID}?", data);
                }
                data["npcID"] = creatureID;
                NPCS_WITH_REFERENCES[creatureID] = true;
                MarkCustomHeaderAsRequired(creatureID);
            }
            if (data.TryGetValue("npcID", out creatureID))
            {
                NPCS_WITH_REFERENCES[creatureID] = true;
                MarkCustomHeaderAsRequired(creatureID);
            }
        }

        private static void Validate_providers(IDictionary<string, object> data)
        {
            if (!data.TryGetValue("providers", out object providers))
                return;

            if (!providers.TryConvert(out List<object> providersList))
            {
                LogError("Invalid Data Format: provider(s)", data);
                return;
            }

            for (int i = providersList.Count - 1; i >= 0; i--)
            {
                var provider = providersList[i];
                if (!provider.TryConvert(out List<object> providerList) || providerList.Count != 2)
                {
                    LogError($"Invalid Data Format: provider {ToJSON(provider)}", data);
                    continue;
                }

                if (!providerList[0].TryConvert(out string pType))
                {
                    LogError($"Invalid Data Format: provider-type: {providerList[0]}", data);
                    continue;
                }

                if (!providerList[1].TryConvert(out decimal pID))
                {
                    LogError($"Invalid Data Format: provider-id {providerList[1]}", data);
                    continue;
                }

                switch (pType)
                {
                    case "o":
                        // Items with coords and single Object provider should list the Object as a Source
                        if (providersList.Count == 1
                            && data.TryGetValue("itemID", out long itemID)
                            && data.TryGetValue("coords", out object coords)
                            && !data.ContainsKey("_allowObjectProvider"))
                        {
                            LogWarn($"Item {itemID} with 'coords' and single Object Provider {pID} should not use Object providers; Source the Object with the Item nested or add '_allowObjectProvider' if an Object provider makes sense and the Object does not need to be Sourced itself", data);
                        }
                        break;
                }
            }
        }

        private static void Validate_sym(IDictionary<string, object> data)
        {
            if (!data.TryGetValue("sym", out List<object> symObject))
                return;

            // empty sym
            if (symObject.Count == 0)
            {
                LogWarn($"Empty 'sym'", data);
                return;
            }

            string previousType = null;
            string previousCommand = null;
            // some logic to check for duplicate 'select' commands of the same type
            foreach (object cmdObj in symObject)
            {
                if (!cmdObj.TryConvert(out List<object> command))
                {
                    LogError($"Incorrect 'sym' command structure encountered (expecting each command in an array): {ToJSON(cmdObj)}", data);
                    return;
                }

                if (command.Count == 0)
                {
                    LogError($"Empty 'sym' command structure encountered: {ToJSON(cmdObj)}", data);
                    return;
                }

                // check various commands
                if (command.Count > 0 && command[0].TryConvert(out string commandName))
                {
                    if (commandName == "select")
                    {
                        if (command.Count > 1 && command[1].TryConvert(out string commandType))
                        {
                            if (previousType == commandType)
                            {
                                LogDebugWarn($"'sym-select' can be cleaned up (all ID's can be passed into one 'select')", data);
                                break;
                            }
                            else
                            {
                                List<object> selections = command.Skip(2).ToList();
                                List<decimal> selectionValues = selections.AsTypedEnumerable<decimal>().ToList();

                                // verify all select values are decimals
                                if (selections.Count != selectionValues.Count)
                                {
                                    LogError($"'sym-select' contains non-numeric selection values", data);
                                }
                            }

                            previousType = commandType;
                        }
                    }
                    else
                    {
                        previousType = null;
                    }

                    // 'sub' commands always finalize, so any following command which is dependent on existing results won't do anything
                    if (previousCommand == "sub")
                    {
                        if (commandName != "merge" && commandName != "sub" && commandName != "select" && commandName != "fill")
                        {
                            LogWarn($"'sym' 'sub' command must be followed by a 'merge' if further actions (e.g. {commandName}) are being done to the results", data);
                        }
                    }

                    previousCommand = commandName;
                }
            }

            // Checks on the LAST sym command
            symObject.Last().TryConvert(out List<object> lastCommand);
            string lastCommandName = lastCommand[0].ToString();
            if (lastCommandName == "merge" || lastCommandName == "finalize")
            {
                LogWarn($"'sym' never needs to end with 'merge' or 'finalize'", data);
            }
        }

        private static void Validate_Encounter(IDictionary<string, object> data)
        {
            if (!data.TryGetValue("encounterID", out long encounterID))
                return;

            // Hash the Encounter for MergeIntos if needed
            data["_encounterHash"] = NestedDifficultyID > 0 ? GetEncounterHash(encounterID, NestedDifficultyID) : GetEncounterHash(encounterID, NestedHeaderID);

            // Clean up Encounters which only have a single npcID assigned via 'crs'
            if (!data.ContainsKey("npcID") && data.TryGetValue("crs", out List<object> crs) && crs.Count == 1 && crs[0].TryConvert(out long crID))
            {
                data["npcID"] = crID;
                data.Remove("crs");
            }

            // Warn about Encounters with no NPCID assignment
            if (!data.ContainsKey("npcID") && !data.ContainsKey("crs"))
            {
                switch (encounterID)
                {
                    // weird encounters that are one encounter but drops are organized by NPCs in the encounter
                    case 1547:  // Silithid Royalty (AQ40)
                    case 1549:  // Twin Emperors (AQ40)
                    case 1552:  // Servant's Quarters (Kara)
                        break;
                    default:
                        LogError($"Encounter {encounterID} is missing an NPC assignment! (Could lead to unassigned Achievement data)");
                        break;
                }
            }
        }

        private static void Validate_Criteria(IDictionary<string, object> data)
        {
            if (!data.TryGetValue("criteriaID", out long criteriaID))
                return;

            if (CurrentParentGroup == null)
                return;

            var parent = CurrentParentGroup.Value;

            // criteria already has an achID or use parent group to find AchID
            if (!data.TryGetValue("achID", out long achID) && parent.Key != "achID" & !parent.Value.TryConvert(out achID))
            {
                LogError($"Orhapned Criteria nested under a non-Achievement group! {criteriaID}", data);
                return;
            }

            data["achID"] = achID;

            // Single SourceQuests can convert to _quests for criteria cloning
            if (data.TryGetValue("sourceQuests", out List<object> questIDs) && questIDs.Count == 1)
            {
                long sqQuestID = questIDs.AsTypedEnumerable<long>().First();

                LogDebug($"INFO: Converted single 'sourceQuests' to '_quests' for Criteria {achID}:{criteriaID} with sourceQuest: {sqQuestID}");
                data["_quests"] = new List<long> { sqQuestID };
                // can remove 'sourceQuests' from the criteria since it's going to be sourced under the required quest
                data.Remove("sourceQuests");
            }

            // NPCs should not be directly linked on Criteria
            if (data.TryGetValue("creatureID", out long creatureID))
            {
                data.Remove("creatureID");
                LogDebug($"INFO: Converted 'creatureID' {creatureID} on Criteria {achID}:{criteriaID} into 'crs'");
                Objects.Merge(data, "crs", new List<long> { creatureID });
            }

            // NPCs should not be directly linked on Criteria
            if (data.TryGetValue("npcID", out long npcID))
            {
                data.Remove("npcID");
                LogDebug($"INFO: Converted 'npcID' {npcID} on Criteria {achID}:{criteriaID} into 'crs'");
                Objects.Merge(data, "crs", new List<long> { npcID });
            }

            // If criteria end up with a single 'crs', then try using _npcs instead to move the criteria under the proper NPC
            // (it won't move if the NPC isn't Sourced, and we will put back the 'crs' anyway)
            if (data.TryGetValue("crs", out List<object> crs) && crs.Count == 1)
            {
                data.Remove("crs");
                Objects.Merge(data, "_npcs", crs);
            }
        }

        private static void Validate_Quest(IDictionary<string, object> data)
        {
            // Mark the quest as referenced
            if (!data.TryGetValue("questID", out long questID))
                return;

            //if (questID == 69332)
            //{

            //}

            // Merge quest entry to AllQuest collection
            Objects.MergeQuestData(data);

            // Classic-only AQD/HQD quest datas
            if (data.TryGetValue("aqd", out IDictionary<string, object> aqd))
            {
                Objects.MergeQuestData(aqd);
            }
            if (data.TryGetValue("hqd", out IDictionary<string, object> hqd))
            {
                Objects.MergeQuestData(hqd);
            }

            // Remove itself from the list of altQuests
            if (data.TryGetValue("altQuests", out List<object> altQuests))
            {
                altQuests.Remove(questID);
                if (altQuests.Count == 0)
                {
                    data.Remove("altQuests");
                }
                else
                {
                    // To keep things simple in Retail, convert altQuests to lockCriteria
                    // if (Program.PreProcessorTags.ContainsKey("RETAIL"))
                    // {

                    // }
                }
            }

            // Convert any 'n' providers into 'qgs' for data simplicity
            if (data.TryGetValue("providers", out List<object> providers))
            {
                List<object> quest_qgs = new List<object>(providers.Count);
                for (int p = providers.Count - 1; p >= 0; p--)
                {
                    object provider = providers[p];
                    // { "n", ### }
                    if (provider is List<object> providerItems && providerItems.Count == 2 && providerItems[0].ToString() == "n")
                    {
                        quest_qgs.Add(providerItems[1]);
                        providers.RemoveAt(p);
                        //LogDebug($"Quest {questID} provider 'n', {providerItems[1]} converted to 'qgs'");
                    }
                }

                // remove 'providers' if it is now empty
                if (providers.Count == 0)
                    data.Remove("providers");

                // merge the 'qgs' back into the data if anything was converted
                if (quest_qgs.Count > 0)
                    Objects.Merge(data, "qgs", quest_qgs);
            }

            // Not quite able to have this as a normal warning yet, some situations are still quite uncertain
            if (!data.ContainsKey("objectID") && !data.ContainsKey("itemID") && !data.ContainsKey("npcID"))
            {
                // don't warn this for HQTs
                if (!data.TryGetValue("type", out string type) || type != "hqt")
                {
                    if (CurrentParentGroup.HasValue &&
                        (CurrentParentGroup.Value.Key == "itemID" ||
                        CurrentParentGroup.Value.Key == "objectID"))
                    {
                        LogDebugWarn($"Raw Quest {questID} should not be listed inside of an Item/Object group.", data);
                    }
                }
            }
        }

        private static void Validate_Achievement(IDictionary<string, object> data)
        {
            if (!data.TryGetValue("achID", out long achID) || data.ContainsKey("criteriaID")) return;
        }

        private static void Validate_InheritedFields(IDictionary<string, object> data, IDictionary<string, object> parentData)
        {
            foreach (string inheritedField in InheritingFields)
            {
                // parent must have the field in order in inherit it
                if (!parentData.TryGetValue(inheritedField, out object inheritedValue))
                    continue;

                // don't assign a field that's already existing
                if (data.ContainsKey(inheritedField))
                    continue;

                // use common merge logic
                // LogDebug($"INFO: Inheriting field {inheritedField}={ToJSON(inheritedValue)}", data);
                Objects.Merge(data, inheritedField, inheritedValue);

                if (!data.TryGetValue("_inherited", out List<string> inheritedFields))
                {
                    data["_inherited"] = inheritedFields = new List<string>();
                }
                // track that this data had an inherited field
                inheritedFields.Add(inheritedField);
            }
        }

        private static void Incorporate_Achievement(IDictionary<string, object> data)
        {
            if (!data.TryGetValue("achID", out long achID) ||
                data.ContainsKey("criteriaID") ||
                (data.TryGetValue("collectible", out bool collectible) && !collectible)) return;

            // Grab AchievementDB info
            ACHIEVEMENTS.TryGetValue(achID, out IDictionary<string, object> achInfo);

            // Guild Achievements are not collectible
            if (achInfo.TryGetValue("isGuild", out bool isGuild) && isGuild)
            {
                //data["collectible"] = false;  // This is now handled in the class.
                data["isGuild"] = true;

                // Make sure any Criteria which are listed under Guild Achievements are also forced non-collectible
                if (data.TryGetValue("g", out List<object> g))
                {
                    foreach (object group in g)
                    {
                        if (group.TryConvert(out Dictionary<string, object> groupData))
                        {
                            if (groupData.ContainsKey("criteriaID"))
                            {
                                //groupData["collectible"] = false;  // This is now handled in the class.
                                groupData["isGuild"] = true;
                            }
                        }
                    }
                }
                return;
            }

            // If not processing the Main Achievement Category, then any encountered non-guild Achievements (which are not Criteria) should be duplicated into the Main Achievement Category
            if (!ProcessingAchievementCategory && !data.ContainsKey("criteriaID"))
            {
                if (achInfo.TryGetValue("parentCategoryID", out long achCatID))
                {
                    DuplicateDataIntoGroups(data, achCatID, "achievementCategoryID");
                    //LogDebug($"Duplicated Achievement {achID} into Achievement Category");
                }
            }

            // don't automate any achievement which is specifically listed under a Difficulty
            if (NestedDifficultyID != 0) return;

            // data marked with noautomation shouldn't incorporate more than this
            if (data.TryGetValue("_noautomation", out bool noautomation) && noautomation) return;
            data.TryGetValue("_doautomation", out bool doautomation);

            // only incorporate achievement criteria which is under a header or another achievement
            // CRIEVE NOTE: What is this and why does it prevent merging achievement data?
            // It was excluding f, achievementCategoryID, expansion, speciesID, itemID, questID, encounterID
            if (CurrentParentGroup.HasValue)
            {
                switch (CurrentParentGroup.Value.Key)
                {
                    case "achID":
                    case "headerID":
                    case "npcID":

                    // Crieve added these
                    case "f":
                    case "achievementCategoryID":
                    case "expansionID":
                        break;
                    default:
                        // data marked with doautomation shouldn't ignore based on header type
                        if (!doautomation)
                        {
                            LogDebug($"INFO: Achievement {achID} not being incorporated since it is listed under a specific Thing {CurrentParentGroup.Value.Key}:{CurrentParentGroup.Value.Value}");
                            return;
                        }
                        break;
                }
            }

            // don't incorporate criteria if the achievement is listed under a real NPC
            if (!doautomation && CurrentParentGroup.Value.Key == "npcID" && CurrentParentGroup.Value.Value.TryConvert(out long id) && id > 0)
            {
                LogDebug($"INFO: Achievement {achID} not being incorporated since it is listed under real NPC {id}");
                return;
            }

            // Pull in any defined Achievement Criteria/Tree unless we've defined it a 'meta' Achievement
            // TODO: include the WagoDB Achievement Data somehow...
            if (achInfo.TryGetValue("criteriaTreeID", out long criteriaTreeID) &&
                TryGetTypeDBObject(criteriaTreeID, out CriteriaTree criteriaTree))
            {
                // Some Achievements we use specific symlinks to show information instead of Criteria (for pre-CATA parses)
                if (CURRENT_RELEASE_VERSION < FIRST_EXPANSION_PATCH["CATA"].ConvertVersion() && CheckSymlink(data, "meta_achievement"))
                {
                    LogDebug($"INFO: Achievement {achID} skipping Criteria incorporation due to symlink:", data["sym"]);
                    return;
                }
                else if (CheckSymlink(data, "partial_achievement", "select"))
                {
                    LogDebug($"INFO: Achievement {achID} skipping Criteria incorporation due to symlink:", data["sym"]);
                    return;
                }

                // CriteriaTree can be linked to a Parent, or CriteriaID
                Incorporate_CriteriaTree(achID, data, criteriaTree.ID, criteriaTree, requireIndividualCriterias: criteriaTree.UseIndependentCriteria());
            }

            // Achievements can end up with QuestID so make sure to capture them
            Objects.MergeQuestData(data);
        }

        private static void Incorporate_Criteria(IDictionary<string, object> data)
        {
            // don't automate any achievement criteria which is specifically listed under a Difficulty
            if (NestedDifficultyID != 0) return;

            if (!data.TryGetValue("criteriaID", out long criteriaID))
                return;

            //data.DataBreakPoint("criteriaID", 55244);
            // ignore criteria which have _encounters defined. maybe eventually figure out the ModiferTree logic for them instead
            // ignore criteria which were already incorporated
            if (data.ContainsKey("_noautomation") || data.ContainsKey("_encounter") || data.ContainsKey("_incorporatedCriteria"))
                return;

            data.TryGetValue("achID", out long achID);
            // Grab AchievementDB info
            ACHIEVEMENTS.TryGetValue(achID, out IDictionary<string, object> achInfo);
            IDictionary<string, object> matchedCriteriaInfo = null;

            if (achInfo.TryGetValue("g", out List<object> criteriaList))
            {
                if (criteriaList.Count >= criteriaID)
                {
                    foreach (IDictionary<string, object> criteriaInfo in criteriaList.AsTypedEnumerable<IDictionary<string, object>>())
                    {
                        // Replace CriteriaID with CriteriaUID if available
                        if (criteriaInfo.TryGetValue("criteriaID", out long criteriaDBID) && criteriaDBID == criteriaID &&
                            criteriaInfo.TryGetValue("criteriaUID", out long criteriaUID))
                        {
                            if (criteriaUID > 0)
                            {
                                //LogDebug($"INFO: Replaced Criteria index {achID}:{criteriaID} with UID {criteriaUID}");
                                criteriaID = criteriaUID;
                                data["criteriaID"] = criteriaID;
                                matchedCriteriaInfo = criteriaInfo;
                                break;
                            }
                        }
                    }
                }

                if (matchedCriteriaInfo == null)
                {
                    matchedCriteriaInfo = criteriaList.AsTypedEnumerable<IDictionary<string, object>>().FirstOrDefault(i => i.TryGetValue("criteriaUID", out long uid) && uid == criteriaID);
                }
            }

            bool incorporated = false;
            // incorporate AchievementDB criteria data
            if (matchedCriteriaInfo != null)
            {
                // Cost
                if (matchedCriteriaInfo.TryGetValue("cost", out object costObj))
                {
                    Cost.Merge(data, costObj);
                    incorporated = true;
                }
                // NPCs
                if (matchedCriteriaInfo.TryGetValue("_npcs", out object npcs))
                {
                    Objects.Merge(data, "_npcs", npcs);
                    incorporated = true;
                }
                // Objects
                if (matchedCriteriaInfo.TryGetValue("_objects", out object objects))
                {
                    Objects.Merge(data, "_objects", objects);
                    incorporated = true;
                }
                // Quests
                if (matchedCriteriaInfo.TryGetValue("_quests", out object quests))
                {
                    Objects.Merge(data, "_quests", quests);
                    incorporated = true;
                }
            }

            // Grab matching Criteria data
            if (!TryGetTypeDBObject(criteriaID, out Criteria criteriaData))
            {
                // If it wasn't found by UID, then try to check by ID using Achievement referenced CriteriaTree
                // Get matching Achievement
                if (!TryGetTypeDBObject(achID, out Achievement achievementData))
                {
                    LogWarn($"Failed to find matching Achievement data (Wago) for ID: {achID}");
                    return;
                }

                // Get matching CriteriaTree
                if (!TryGetTypeDBObject(achievementData.Criteria_tree, out CriteriaTree criteriaTreeData))
                {
                    LogWarn($"Failed to find matching CriteriaTree data (Wago) for ID: {achievementData.Criteria_tree}");
                    return;
                }

                // Get children of the CriteriaTree
                if (TryGetTypeDBObjectChildren(criteriaTreeData, out List<CriteriaTree> children))
                {
                    long critIndex = criteriaID - 1;
                    foreach (CriteriaTree child in children)
                    {
                        // See if the CriteriaTree OrderIndex matches the CriteriaID, then apply the proper CriteriaUID from the CriteriaTree
                        if (child.OrderIndex == critIndex)
                        {
                            criteriaTreeData = child;
                            //// this can be multiple criteria...
                            //if (child.CriteriaID > 0)
                            //{
                            //    LogDebug($"INFO: Replaced Criteria index {achID}:{criteriaID} with UID {child.CriteriaID} (via DB)");
                            //    criteriaID = child.CriteriaID;
                            //    data["criteriaID"] = criteriaID;
                            //}
                            //else
                            //{
                            //    Incorporate_CriteriaTree(achID, data, child.ID, child, children.Count == 1);
                            //    if (!data.ContainsKey("g") && data.TryGetValue("criteriaID", out long nestCritID) && nestCritID == criteriaID)
                            //    {
                            //        if (TryGetTypeDBObjectChildren(child, out List<CriteriaTree> childTrees))
                            //        {
                            //            LogWarn($"Criteria {achID}:{criteriaID} is weird. It uses unsupported CriteriaUID: {ToJSON(childTrees.Select(c => c.CriteriaID).ToList())}");
                            //            Log($"Please ensure the data is accurate and add [\"_noautomation\"] = true, to the crit() group to remove this warning.");
                            //            return;
                            //        }
                            //    }
                            //}
                            break;
                        }
                    }
                }

                // See if we didn't end up with a valid UID with nothing nested
                LogWarn($"Criteria {achID}:{criteriaID} is weird. It uses unsupported CriteriaUID: {ToJSON(GetAllNestedTypeDBObjects(criteriaTreeData).Select(t => t.CriteriaID).Where(id => id > 0).ToList())}");
                Log($"--- Please ensure the data is accurate and add [\"_noautomation\"] = true, to the crit() group to remove this warning.");
                return;
            }

            // merge CriteriaDB data into Criteria data
            // SourceQuest(s) can convert to _quests for criteria cloning
            long sq = criteriaData.GetSourceQuest();
            if (sq > 0)
            {
                if (data.TryGetValue("_quests", out object quests))
                {
                    //LogDebugWarn($"Remove _quests {ToJSON(quests)} from Criteria {achID}:{criteriaID}. DB contains sourceQuest: {sq}");
                }

                LogDebug($"INFO: Added _quests to Criteria {achID}:{criteriaID} => {sq}");
                Objects.Merge(data, "_quests", sq);
                incorporated = true;

                // Criteria moved under a Quest should not have a cost/provider, but rather their destination should have that data
                // if (data.ContainsKey("cost") || data.ContainsKey("providers"))
                // {
                //     LogDebugWarn($"Move cost/provider from Criteria {achID}:{criteriaID} to its SourceQuest {questID} if applicable");
                // }
                // can remove 'sourceQuests' from the criteria since it's going to be sourced under the required quest
                data.Remove("sourceQuests");
            }

            // Provider Item for the Criteria (if not ignored)
            long providerItem = criteriaData.GetProviderItem();
            if (providerItem > 0)
            {
                // if parent criteriaTree specifies a larger amount, then need to assign as a Cost instead of Provider
                data.TryGetValue("_parentAmount", out long parentAmount);
                if (parentAmount <= 1)
                {
                    LogDebug($"INFO: Added Item Provider to Criteria {achID}:{criteriaID} => {providerItem}");
                    Objects.Merge(data, "providers", new List<object> { new List<object> { "i", providerItem } });
                }
                else
                {
                    LogDebug($"INFO: Added Item Cost to Criteria {achID}:{criteriaID} => {providerItem}x{parentAmount}");
                    Cost.Merge(data, "i", providerItem, parentAmount);
                }
                incorporated = true;
            }

            // Provider Object for the Criteria
            long providerObject = criteriaData.GetProviderObject();
            if (providerObject > 0)
            {
                LogDebug($"INFO: Added _objects to Criteria {achID}:{criteriaID} => {providerObject}");
                Objects.Merge(data, "_objects", providerObject);
                incorporated = true;
            }

            // Provider NPC for the Criteria
            long providerNPC = criteriaData.GetProviderNPC();
            if (providerNPC > 0)
            {
                // modifier tree ID
                // 25 (NONE) -> 26 (MAP_DIFFICULTY_OLD=1)
                // 27 (NONE) -> 28 (MAP_DIFFICULTY_OLD=0)
                // 0 - 5D dungeon (AN) (d=1)
                // 25 - 5DH difficulty (AN) (d=2) / 25R difficulty (Naxx) (d=4) -> 26 (Type 20 Asset 1)
                // 27 - 10R difficulty (Naxx) (d=3) -> 28 (Type 20 Asset 0)
                if (data.TryGetValue("_npcs", out object npcs) || data.TryGetValue("crs", out object crs))
                {
                    //LogDebugWarn($"Remove _npcs/crs {ToJSON(npcs)} from Criteria {achID}:{criteriaID}. DB contains linked NPC: {providerNPC}");
                    data.Remove("crs");
                }

                LogDebug($"INFO: Added _npcs to Criteria {achID}:{criteriaID} => {providerNPC}");
                Objects.Merge(data, "_npcs", providerNPC);
                incorporated = true;
            }

            long spellID = criteriaData.GetReceivedSpellID();
            if (spellID > 0)
            {
                // Only try to nest actually visible Criteria under a Spell
                if (!data.ContainsKey("_ignored"))
                {
                    //if (!TryGetSOURCED("recipeID", spellID, out _)
                    //    //&& !TryGetSOURCED("spellID", spellID, out _)
                    //    )
                    //{
                    //    LogDebugWarn($"Spell {spellID} linked to Criteria {achID}:{criteriaID}, but it's an Unsourced Spell. Not nesting Criteria.");
                    //    if (criteriaData.IsIgnoreFlags())
                    //    {
                    //        IEnumerable<string> usefulKeys = data.Keys.Except(IndeterminateCriteriaDataFields).Except(s => s.EndsWith("ID"));
                    //        if (!usefulKeys.Any())
                    //        {
                    //            // mark this criteria to be removed since it is hidden in-game and doesn't correspond to or contain any useful ATT data at this time
                    //            LogDebugWarn($"Criteria {achID}:{criteriaID} removed since it doesn't correspond to useful ATT data");
                    //            data["_remove"] = true;
                    //        }
                    //    }
                    //}
                    //else
                    //{
                    // _spells is later switched to respective Item associated with the Spell if possible
                    LogDebug($"INFO: Added _spells to visible Criteria {achID}:{criteriaID} => {spellID}");
                    Objects.Merge(data, "_spells", new List<object> { spellID });
                    incorporated = true;
                    //}
                }
            }

            spellID = criteriaData.GetCastedSpellID();
            if (spellID > 0)
            {
                // casted spells specifically should be providers from the spell
                LogDebug($"INFO: Added Spell provider to Criteria {achID}:{criteriaID} => {spellID}");
                Objects.Merge(data, "providers", new List<object> { new List<object> { "s", spellID } });
                incorporated = true;
            }

            long achievementID = criteriaData.GetRequiredAchievement();
            if (achievementID > 0)
            {
                if (!TryGetSOURCED("achID", achievementID, out _))
                {
                    LogDebugWarn($"Unsourced Achievement {achievementID} linked to Criteria {achID}:{criteriaID}, but it's likely a hidden achievement. Not nesting Criteria.");
                }
                else
                {
                    LogDebug($"INFO: Added _achievements to Criteria {achID}:{criteriaID} => {achievementID}");
                    Objects.Merge(data, "_achievements", achievementID);
                    incorporated = true;
                }
            }

            long worldMapOverlayID = criteriaData.GetExplorationWorldMapOverlayID();
            if (worldMapOverlayID > 0)
            {
                if (TypeDB.TryGetValue("WorldMapOverlay", out IDictionary<long, IDBType> WorldMapOverlay))
                {
                    if (WorldMapOverlay.TryGetValue(worldMapOverlayID, out IDBType obj) && obj is WorldMapOverlay overlay)
                    {
                        long explorationID = overlay.AreaID_0;
                        if (explorationID > 0)
                        {
                            if (!TryGetSOURCED("explorationID", explorationID, out _))
                            {
                                LogWarn($"Exploration {explorationID} should be sourced for nesting Criteria {achID}:{criteriaID}");
                            }
                            else
                            {
                                LogDebug($"INFO: Added _exploration to Criteria {achID}:{criteriaID} => {explorationID}");
                                Objects.Merge(data, "_exploration", explorationID);
                                incorporated = true;
                            }
                        }
                    }
                }
            }

            long factionID = criteriaData.GetFactionID();
            if (factionID > 0)
            {
                if (!TryGetSOURCED("factionID", factionID, out _))
                {
                    LogWarn($"Faction {factionID} should be sourced for nesting Criteria {achID}:{criteriaID}");
                }
                else
                {
                    LogDebug($"INFO: Added _factions to Criteria {achID}:{criteriaID} => {factionID}");
                    Objects.Merge(data, "_factions", factionID);
                    incorporated = true;
                }
            }

            long flightpathID = criteriaData.GetRequiredFlightPath();
            if (flightpathID > 0)
            {
                if (!TryGetSOURCED("flightpathID", flightpathID, out _))
                {
                    LogWarn($"Flightpath {flightpathID} should be sourced as it is attached to Criteria {achID}:{criteriaID}");
                }
                else
                {
                    LogDebug($"INFO: Added _flightpath to Criteria {achID}:{criteriaID} => {flightpathID}");
                    Objects.Merge(data, "_flightpath", flightpathID);
                    incorporated = true;
                }
            }

            long followerID = criteriaData.GetRecruitFollowerID();
            if (followerID > 0)
            {
                if (!TryGetSOURCED("followerID", followerID, out _))
                {
                    LogWarn($"Follower {followerID} should be sourced as it is attached to Criteria {achID}:{criteriaID}");
                }
                else
                {
                    LogDebug($"INFO: Added _follower to Criteria {achID}:{criteriaID} => {followerID}");
                    Objects.Merge(data, "_follower", followerID);
                    incorporated = true;
                }
            }

            long missionID = criteriaData.GetGarrisonMissionID();
            if (missionID > 0)
            {
                if (!TryGetSOURCED("missionID", missionID, out _))
                {
                    LogWarn($"Mission {missionID} should be sourced as it is attached to Criteria {achID}:{criteriaID}");
                }
                else
                {
                    LogDebug($"INFO: Added _mission to Criteria {achID}:{criteriaID} with Mission: {missionID}");
                    Objects.Merge(data, "_mission", missionID);
                    incorporated = true;
                }
            }

            // This needs to be the last check performed since it will remove the Criteria group if nothing useful was added from the Criteria data
            long modifierTreeID = criteriaData.GetModifierTreeID();
            if (modifierTreeID > 0)
            {
                incorporated |= Incorporate_ModifierTree(data, modifierTreeID);
                // -> modifiertree -> parent[collection] -> type=4(creature target) -> Asset
            }

            // only mark the non-useful criteria to remove if there was no other data added from it
            if (!incorporated && !criteriaData.IsUseful())
            {
                if (!data.ContainsKey("_remove"))
                {
                    LogDebug($"INFO: Criteria {achID}:{criteriaID} was not determined as 'useful' and had no incorporated data. It will be removed.");
                    data["_remove"] = true;
                }
            }
            else
            {
                // track that this Criteria data already had data incorporated
                data["_incorporatedCriteria"] = true;
            }
        }

        /// <summary>
        ///
        /// </summary>
        /// <param name="achID"></param>
        /// <param name="data"></param>
        /// <param name="criteriaTreeID"></param>
        /// <param name="criteriaTree"></param>
        /// <param name="mergeDirectly"></param>
        /// <param name="level"></param>
        /// <param name="extraData">Any existing contrib data from a criteria group by ID which needs to migrate into the child criteria by UID instead</param>
        private static bool Incorporate_CriteriaTree(long achID, IDictionary<string, object> data, long criteriaTreeID,
            CriteriaTree criteriaTree = null, bool mergeDirectly = false, int level = 0, IDictionary<string, object> extraData = null,
            bool requireIndividualCriterias = false)
        {
            if (criteriaTree == null)
            {
                if (!TryGetTypeDBObject(criteriaTreeID, out CriteriaTree refCriteriaTree))
                    return false;

                criteriaTree = refCriteriaTree;
            }

            bool inGameIgnored = criteriaTree.IsIgnoreFlags() && !data.ContainsKey("_doautomation");
            bool incorporated = false;
            // CriteriaTree itself is linked to a Criteria
            if (criteriaTree.CriteriaID != 0 && TryGetTypeDBObject(criteriaTree.CriteriaID, out Criteria criteria) && criteria.IsUseful())
            {
                long criteriaProviderItem = criteria.GetProviderItem();
                // Don't incorporate ignore-flagged CriteriaTree whose Criteria is simply a provider Item (i.e. Old Crafty has 2 criteria both with same provider)
                if (!requireIndividualCriterias && criteriaProviderItem > 0 && inGameIgnored)
                {
                    if (criteriaTree.Amount <= 1)
                    {
                        // instead merge the single provider onto the achievement itself
                        LogDebug($"INFO: Incorporating Provider Item {criteriaProviderItem} for Achievement {achID}");
                        var provider = new List<object> { "i", criteriaProviderItem };
                        Objects.Merge(data, "provider", provider);
                        TrackIncorporationData(data, "provider", provider);
                    }
                    else
                    {
                        // or merge the amount of items as a cost
                        LogDebug($"INFO: Incorporating Cost Item {criteriaProviderItem} x {criteriaTree.Amount} for Achievement {achID}");
                        Cost.Merge(data, "i", criteriaProviderItem, criteriaTree.Amount);
                        TrackIncorporationData(data, "cost", data["cost"]);
                    }
                    incorporated = true;
                }
                else
                {
                    IDictionary<string, object> criteriaData = criteria.AsData();
                    criteriaData["achID"] = achID;
                    // capture the parent criteria tree amount multiplier if it exists, so when the criteria data is incorporated we can properly utilize the value
                    if (criteriaTree.Operator == 0 && criteriaTree.Amount > 0)
                    {
                        criteriaData["_parentAmount"] = criteriaTree.Amount;
                    }
                    if (extraData != null)
                    {
                        Objects.Merge(criteriaData, extraData);
                        extraData = null;
                    }
                    // we can merge single criteria under a criteriatree into the achievement if it's 1 level down,
                    // otherwise it's a criteira which is split instead
                    if (mergeDirectly && level == 1)
                    {
                        LogDebug($"INFO: Incorporating single Criteria Data from {criteriaTree.CriteriaID} into Achievement: {achID} RequireIndividualCriterias={requireIndividualCriterias}", data);
                        Incorporate_Criteria(criteriaData);
                        incorporated = true;

                        // then merge certain fields into the Achievement data instead of nesting the Criteria
                        if (criteriaData.TryGetValue("cost", out object cost))
                        {
                            Cost.Merge(data, cost);
                            TrackIncorporationData(data, "cost", cost);
                        }
                        if (criteriaData.TryGetValue("providers", out object providers))
                        {
                            Objects.Merge(data, "providers", providers);
                            TrackIncorporationData(data, "providers", providers);
                        }
                        if (criteriaData.TryGetValue("_objects", out List<object> objects))
                        {
                            var o_prov = new List<object> { "o", objects[0] };
                            Objects.Merge(data, "provider", o_prov);
                            TrackIncorporationData(data, "provider", o_prov);
                        }
                        if (criteriaData.TryGetValue("_npcs", out List<object> nps))
                        {
                            var n_prov = new List<object> { "n", nps[0] };
                            Objects.Merge(data, "provider", n_prov);
                            TrackIncorporationData(data, "provider", n_prov);
                        }
                        if (criteriaData.TryGetValue("_spells", out List<object> spells))
                        {
                            var s_prov = new List<object> { "s", spells[0] };
                            Objects.Merge(data, "provider", s_prov);
                            TrackIncorporationData(data, "provider", s_prov);
                        }
                        if (criteriaData.TryGetValue("_quests", out List<object> quests))
                        {
                            if (quests.FirstOrDefault() is long questID)
                            {
                                // if the questID is not Sourced, then set it on the achievement
                                if (!SOURCED["questID"].ContainsKey(questID))
                                {
                                    LogDebug($"INFO: Assigned Criteria {achID}:{criteria.ID} QuestID {questID} directly to stand-alone Achievement", data);
                                    Objects.Merge(data, "questID", questID);
                                    TrackIncorporationData(data, "questID", questID);
                                }
                                else if (!data.TryGetValue("questID", out long dataQuestID) || dataQuestID != questID)
                                {
                                    // otherwise just use sourceQuest
                                    Objects.Merge(data, "sourceQuest", questID);
                                    TrackIncorporationData(data, "sourceQuest", questID);
                                }
                            }
                        }
                    }
                    // otherwise the criteria index may be split into multiple criteriaUID, and we just merge them all into the achievement
                    else
                    {
                        if (inGameIgnored && criteriaProviderItem == 0)
                        {
                            criteriaData["_ignored"] = true;
                        }

                        incorporated = true;
                        if (data.TryGetValue("timeline", out object timeline))
                        {
                            Objects.Merge(criteriaData, "timeline", timeline);
                        }
                        if (data.TryGetValue("awp", out object awp))
                        {
                            Objects.Merge(criteriaData, "awp", awp);
                        }
                        LogDebug($"INFO: Incorporating Criteria Data from {criteriaTree.CriteriaID} under Achievement: {achID} RequireIndividualCriterias={requireIndividualCriterias}", criteriaData);
                        Objects.Merge(data, "g", criteriaData);
                    }

                    // Achievements whose criteria is incorporated should no longer use achievement_criteria symlink
                    if (data.TryGetValue("sym", out List<object> sym))
                    {
                        LogDebug($"INFO: Removed unnecessary Achievement sym (has incorporated Criteria): {achID} [{ToJSON(sym)}]");
                        data.Remove("sym");
                    }
                }
            }

            // CriteriaTree can be a parent, which means the children should be incorporated as criteria of the data
            if (criteriaTree.IsUseful() && TryGetTypeDBObjectChildren(criteriaTree, out List<CriteriaTree> childTrees))
            {
                // Don't incorporate multiple Criteria from an ignored CriteriaTree
                if (inGameIgnored)
                {
                    LogDebug($"Ignored Criteria under Achievement:{achID}");
                    return false;
                }

                if (criteriaTree.IsAllianceOnlyFlags())
                {
                    extraData = extraData ?? new Dictionary<string, object>();
                    extraData["r"] = 2;
                    TrackIncorporationData(data, "r", 2);
                }
                else if (criteriaTree.IsHordeOnlyFlags())
                {
                    extraData = extraData ?? new Dictionary<string, object>();
                    extraData["r"] = 1;
                    TrackIncorporationData(data, "r", 1);
                }

                foreach (CriteriaTree child in childTrees)
                {
                    if (level == 0)
                    {
                        // add level 1 criteriaIndex for proper name retrieval in game
                        extraData = extraData ?? new Dictionary<string, object>();
                        extraData["id"] = child.OrderIndex + 1;
                    }

                    incorporated |= Incorporate_CriteriaTree(achID, data, child.ID, child, childTrees.Count == 1, level + 1, extraData, criteriaTree.UseIndependentCriteria());
                }

                long criteriaIndex = criteriaTree.OrderIndex + 1;
                // beyond the first criteriatree split merging into an achievement, we instead want the criteriatree
                // data to merge directly into criteria index groups if sourced
                if (level == 1)
                {
                    // see if a CriteriaID by OrderIndex exists, and see if we need to warn about extra data that it contains, if we didn't end up incorporating any criteria
                    if (data.TryGetValue("g", out List<object> datag))
                    {
                        // since we're nesting sub-criteria individually, we don't need an indexed-criteria which represents the cumulative value of those nested criteria
                        for (int i = datag.Count - 1; i >= 0; i--)
                        {
                            IDictionary<string, object> obj = datag[i] as IDictionary<string, object>;
                            if (obj.TryGetValue("criteriaID", out long objCriteriaID) && objCriteriaID == criteriaIndex)
                            {
                                if (obj.TryGetValue("_noautomation", out bool noautomation) && noautomation)
                                {
                                    return incorporated;
                                }

                                if (incorporated)
                                {
                                    LogDebug($"Removing existing Criteria by Index: {achID}:{objCriteriaID}");
                                    datag.RemoveAt(i);
                                    // but any other data needs to be preserved somehow, can warn contrib to migrate to new UIDs
                                    obj.Remove("criteriaID");
                                    obj.Remove("achID");
                                    obj.Remove("timeline");
                                    obj.Remove("awp");
                                    obj.Remove("r");
                                    obj.Remove("g");
                                    if (obj.Keys.Count > 0)
                                    {
                                        LogWarn($"Migrate (or remove) extra data from {achID}:{criteriaIndex} into the proper sub-criteria(s): {ToJSON(GetAllNestedTypeDBObjects(criteriaTree).Select(t => t.CriteriaID).Where(id => id > 0).ToList())} <== ", obj);
                                    }
                                }
                                else
                                {
                                    LogWarn($"Add '_noautomation' to Criteria by Index: {achID}:{objCriteriaID} if it contains accurate data since it failed to incorporate useful data.");
                                    incorporated = true;
                                }
                                break;
                            }
                        }
                    }

                    // more than 1 useful & non-ignored criteria tree to nest, but none had any incorporated data, so add basic criterias by index
                    if (!incorporated && !data.ContainsKey("achievement_criteria") && childTrees.Any(c => c.IsUseful() && !c.IsIgnoreFlags()))
                    {
                        extraData = extraData ?? new Dictionary<string, object>();
                        if (extraData.TryGetValue("id", out long id) && id == criteriaIndex)
                        {
                            extraData.Remove("id");
                        }
                        extraData["criteriaID"] = criteriaIndex;
                        extraData["achID"] = achID;
                        extraData["_noautomation"] = true;
                        LogDebug($"Added Criteria by Index {achID}:{criteriaIndex} since data incorporation had no useful criteria", extraData);
                        Objects.Merge(data, "g", extraData);
                    }
                }
            }

            return incorporated;
        }

        private static bool Incorporate_ModifierTree(IDictionary<string, object> data, long id, ModifierTree existingModifierTree = null)
        {
            bool incorporated = false;
            if (existingModifierTree == null)
            {
                if (!TryGetTypeDBObject(id, out ModifierTree modifierTree))
                    return incorporated;

                existingModifierTree = modifierTree;
            }

            // 2 (SingleTrue)
            if (existingModifierTree.Operator == 2)
            {
                incorporated = true;
                switch (existingModifierTree.Type)
                {
                    // 4 (TARGET_CREATURE_ENTRY)
                    case 4:
                    // 81 (BATTLE_PET_ENTRY)
                    case 81:
                        Objects.Merge(data, "_npcs", existingModifierTree.Asset);
                        break;
                    // 19 (ITEM_IS_ITEMID)
                    case 19:
                        Objects.Merge(data, "provider", new List<object> { "i", existingModifierTree.Asset });
                        TrackIncorporationData(data, "provider", new List<object> { "i", existingModifierTree.Asset });
                        break;
                    // 62 (GUILD_REPUTATION)
                    case 62:
                        Objects.Merge(data, "minReputation", new List<object> { 1168, existingModifierTree.Asset });
                        TrackIncorporationData(data, "minReputation", new List<object> { 1168, existingModifierTree.Asset });
                        Objects.Merge(data, "_factions", 1168);
                        break;
                    // 75 (THE_TILLERS_REPUTATION)
                    case 75:
                        Objects.Merge(data, "minReputation", new List<object> { 1272, existingModifierTree.Asset });
                        TrackIncorporationData(data, "minReputation", new List<object> { 1272, existingModifierTree.Asset });
                        Objects.Merge(data, "_factions", 1272);
                        break;
                    // 84 (IS_ON_QUEST)
                    case 84:
                    // 110 (REWARDED_QUEST)
                    case 110:
                        Objects.Merge(data, "_quests", existingModifierTree.Asset);
                        break;
                    // 111 (REWARDED_QUEST)
                    case 111:
                        Objects.Merge(data, "_quests", existingModifierTree.Asset);
                        break;
                    // 85 (EXALTED_WITH_FACTION)
                    case 85:
                        Objects.Merge(data, "minReputation", new List<object> { existingModifierTree.Asset, 42000 });
                        TrackIncorporationData(data, "minReputation", new List<object> { existingModifierTree.Asset, 42000 });
                        Objects.Merge(data, "_factions", existingModifierTree.Asset);
                        break;
                    // 86 (HAS_ACHIEVEMENT)
                    case 86:
                    // 87 (HAS_ACHIEVEMENT_ON_CHARACTER)
                    case 87:
                        Objects.Merge(data, "_achievements", existingModifierTree.Asset);
                        break;
                    // 88 (CLOUD_SERPENT_REPUTATION)
                    case 88:
                        Objects.Merge(data, "minReputation", new List<object> { 1271, existingModifierTree.Asset });
                        TrackIncorporationData(data, "minReputation", new List<object> { 1271, existingModifierTree.Asset });
                        Objects.Merge(data, "_factions", 1271);
                        break;
                    // 91 (BETTLE_PET_SPECIES)
                    case 91:
                        // world quest battle pets have 'speciesID' and are sourced under NYI... don't move any of their criteria there
                        if (TryGetSOURCED("speciesID", existingModifierTree.Asset, out HashSet<IDictionary<string, object>> sourcedSpecies)
                            && sourcedSpecies.All(s => IsObtainableData(s)))
                        {
                            Objects.Merge(data, "_species", existingModifierTree.Asset);
                        }
                        break;
                    // 95 (FACTION_STANDING)
                    case 95:
                        Objects.Merge(data, "minReputation", new List<object> { existingModifierTree.Asset, existingModifierTree.SecondaryAsset });
                        TrackIncorporationData(data, "minReputation", new List<object> { existingModifierTree.Asset, existingModifierTree.SecondaryAsset });
                        Objects.Merge(data, "_factions", existingModifierTree.Asset);
                        break;
                    // 99 (SKILL)
                    case 99:
                        Objects.Merge(data, "requireSkill", existingModifierTree.Asset);
                        TrackIncorporationData(data, "requireSkill", existingModifierTree.Asset);
                        // SecondaryAsset = skill level
                        break;
                    // 105 (ITEM_COUNT)
                    case 105:
                        if (existingModifierTree.SecondaryAsset == 1)
                        {
                            Objects.Merge(data, "provider", new List<object> { "i", existingModifierTree.Asset });
                            TrackIncorporationData(data, "provider", new List<object> { "i", existingModifierTree.Asset });
                        }
                        else
                        {
                            Cost.Merge(data, "i", existingModifierTree.Asset, existingModifierTree.SecondaryAsset);
                            TrackIncorporationData(data, "cost", data["cost"]);
                        }
                        break;
                    // 119 (CURRENCY_AMOUNT)
                    case 119:
                        Cost.Merge(data, "c", existingModifierTree.Asset, existingModifierTree.SecondaryAsset);
                        TrackIncorporationData(data, "cost", data["cost"]);
                        break;
                    // 191 (PLAYER_RACE_IS)
                    case 191:
                        Objects.Merge(data, "races", existingModifierTree.Asset);
                        TrackIncorporationData(data, "races", existingModifierTree.Asset);
                        break;
                    // 199 (HAS_TOY)
                    case 199:
                        Objects.Merge(data, "provider", new List<object> { "i", existingModifierTree.Asset });
                        TrackIncorporationData(data, "provider", new List<object> { "i", existingModifierTree.Asset });
                        break;
                    // 221 (PARAGON_LEVEL_WITH_FACTION_EQUAL_OR_GREATER)
                    case 221:
                        Objects.Merge(data, "minReputation", new List<object> { existingModifierTree.SecondaryAsset, existingModifierTree.Asset });
                        TrackIncorporationData(data, "provider", new List<object> { existingModifierTree.SecondaryAsset, existingModifierTree.Asset });
                        Objects.Merge(data, "_factions", existingModifierTree.SecondaryAsset);
                        break;
                    default:
                        incorporated = false;
                        break;
                }
            }

            // ModifierTree can be a parent, which means the children should be incorporated into the data instead
            if (TryGetTypeDBObjectChildren(existingModifierTree, out List<ModifierTree> childTrees))
            {
                foreach (ModifierTree child in childTrees)
                {
                    incorporated |= Incorporate_ModifierTree(data, child.ID, child);
                }
            }

            return incorporated;
        }

        private static void Incorporate_Ensemble(IDictionary<string, object> data)
        {
            if (!data.TryGetValue("type", out string type) || !(type == "ensembleID" || type == "ensembleSpellID")) return;
            if (data.ContainsKey("_noautomation")) return;
            if (data.ContainsKey("_Incorporate_Ensemble")) return;

            if (data.TryGetValue("tmogSetID", out long tmogSetID) && TryGetTypeDBObject(tmogSetID, out TransmogSet tmogSet) && tmogSet.TrackingQuestID > 0)
            {
                Objects.Merge(data, "questID", tmogSet.TrackingQuestID);
                TrackIncorporationData(data, "questID", tmogSet.TrackingQuestID);

                // check if other Ensembles have the same name as well. this could be a case where alternate Ensembles are auto-learned via server-side
                // spellID triggers which may need to be added into the 'real' Ensemble Item to pull in the proper set of learned Sources
                //IEnumerable<TransmogSet> matchingTmogSets = GetTypeDBObjects<TransmogSet>(i => i.Name_lang == tmogSet.Name_lang
                //                                                                            && i.TrackingQuestID > 0
                //                                                                            && i.TrackingQuestID != tmogSet.TrackingQuestID);
                //data.TryGetValue("itemID", out long ensembleID);
                //foreach (var matchingTmogSet in matchingTmogSets)
                //{
                //    long? matchingTmogSetSpellID = GetTypeDBObjects<SpellEffect>(i => i.EffectMiscValue_0 == matchingTmogSet.ID && i.IsLearnedTransmogSet()).FirstOrDefault()?.SpellID;
                //    if (matchingTmogSetSpellID != null)
                //    {
                //        LogDebugWarn($"Matching Transmog Set {matchingTmogSet.Name_lang}:{matchingTmogSet.ID} may need a manual SpellID {matchingTmogSetSpellID} added within existing iensemble({ensembleID}");
                //    }
                //}
            }

            // add additional ensemble spells as sub-groups of the Item Ensemble
            if (data.TryGetValue("extraTransmogSetSpells", out List<object> tmogsetSpells))
            {
                foreach (long subtmogsetSpell in tmogsetSpells.AsTypedEnumerable<long>())
                {
                    // we will just use the SpellID as the EnsembleID since it's only used for logging if it's not an ItemID
                    Dictionary<string, object> subEnsemble = new Dictionary<string, object>
                    {
                        { "ensembleSpellID", subtmogsetSpell },
                        { "type", "ensembleSpellID" },
                        { "spellID", subtmogsetSpell },
                    };
                    //Incorporate_Ensemble(subEnsemble);
                    Objects.Merge(data, "g", subEnsemble);
                    //AddPostProcessing(EnsembleCleanup, data);
                }
            }

            AddPostProcessing(EnsembleCleanup, data);
            // don't incorporate ensemble again
            data["_Incorporate_Ensemble"] = true;
        }

        private static void Incorporate_Item_TransmogSetItems(IDictionary<string, object> data, long tmogSetID)
        {
            if (!TryGetTypeDBObjectCollection(tmogSetID, out List<TransmogSetItem> transmogSetItems))
            {
                LogDebugWarn($"Ensemble missing Wago TransmogSetItem record(s) for TransmogSetID {tmogSetID}", data);
                return;
            }

            if (!data.TryGetValue("type", out string type) || !(type == "ensembleID" || type == "ensembleSpellID"))
            {
                LogDebugWarn($"Valid Ensemble information not set as 'iensemble'/'sensemble'", data);
                return;
            }

            List<long> allSourceIDs = transmogSetItems.Select(i => i.ItemModifiedAppearanceID).ToList();

            // check if other Ensembles have the same TrackingQuestID -- these seem to additionally be granted without relying on a nested SpellEffect trigger
            if (data.TryGetValue("questID", out long questID) && TryGetTypeDBObjectCollection(questID, out List<TransmogSet> sameQuestTransmogSets))
            {
                foreach (var sameQuestTransmogSet in sameQuestTransmogSets)
                {
                    if (sameQuestTransmogSet.ID != tmogSetID)
                    {
                        if (!TryGetTypeDBObjectCollection(sameQuestTransmogSet.ID, out transmogSetItems))
                        {
                            LogDebugWarn($"Ensemble {tmogSetID} missing addtional Wago TransmogSetItem record(s) for TransmogSetID {sameQuestTransmogSet.ID}", data);
                        }
                        else
                        {
                            allSourceIDs.AddRange(transmogSetItems.Select(i => i.ItemModifiedAppearanceID));
                            LogDebug($"INFO: Ensemble {tmogSetID} has addtional TransmogSetItem record(s) from TransmogSetID {sameQuestTransmogSet.ID}", data);
                        }
                    }
                }
            }

            // Remove any added SourceIDs which don't actually exist in the ItemModifiedAppearance DB
            allSourceIDs.RemoveAll(id =>
            {
                if (!TryGetTypeDBObject<ItemModifiedAppearance>(id, out _))
                {
                    LogDebugWarn($"Removing SourceID {id} from TransmogSet {tmogSetID} since it does not exist in ItemModifiedAppearanceDB");
                    return true;
                }
                return false;
            });

            Objects.Merge(data, "_sourceIDs", allSourceIDs);
            TrackIncorporationData(data, "_sourceIDs", allSourceIDs);
            LogDebug($"INFO: Ensemble {type} with TransmogSet {tmogSetID} merged {allSourceIDs.Count} SourceIDs", data);

            //foreach (long sourceID in )
            //{
            //    Items.DetermineItemID(itemData);
            //    // since we may determine an itemID for this data after the ConditionalMerge phase
            //    // we need to apply that logic to this data specifically as well
            //    DataConditionalMerge(itemData);
            //    Objects.Merge(data, "g", itemData);
            //}
        }

        private static void Incorporate_Item(IDictionary<string, object> data)
        {
            if (!data.TryGetValue("itemID", out long itemID)) return;
            if (data.ContainsKey("_noautomation")) return;

            // See if there's a Primary Spell already (can be set via WagoDB/Item/SpellID in AsData() when merging ItemDB)
            data.TryGetValue("spellID", out long spellID);

            // See what direct ItemXItemEffects are linked to this Item
            // Item X> ItemXItemEffect
            // ItemXItemEffect 1> ItemEffect
            // ItemEffect X> SpellEffect
            // e.g. i:207046 -> 2 ItemXItemEffect -> 2 ItemEffect -> 2 SpellEffect & 4 SpellEffect
            if (TryGetTypeDBObjectCollection(itemID, out List<ItemXItemEffect> itemXItemEffects))
            {
                foreach (ItemXItemEffect itemXItemEffect in itemXItemEffects)
                {
                    if (!TryGetTypeDBObject(itemXItemEffect.ItemEffectID, out ItemEffect itemEffect))
                        continue;

                    // ignore matching spellID effect
                    if (itemEffect.SpellID == spellID)
                        continue;

                    // Incorporate_Spell will handle any 'extra' spells triggered by secondary ItemEffects
                    Objects.Merge(data, "_extraSpells", itemEffect.SpellID);
                }
            }
        }

        private static void Incorporate_Spell(IDictionary<string, object> data)
        {
            if (!data.TryGetValue("spellID", out long spellID)) return;
            if (data.ContainsKey("_noautomation")) return;

            // See what the Spell links to
            if (TryGetTypeDBObjectCollection(spellID, out List<SpellEffect> spellEffects))
            {
                foreach (SpellEffect spellEffect in spellEffects)
                {
                    Incorporate_SpellEffect(data, spellEffect);
                }
            }
            else
            {
                // quite spammy now with all Items being incorporated
                //LogDebugWarn($"Item with Spell {spellID} missing Wago SpellEffect record", data);
            }

            // Incorporate any extra spells
            if (data.TryGetValue("_extraSpells", out List<object> extraSpells))
            {
                foreach (long extraSpellID in extraSpells.AsTypedEnumerable<long>())
                {
                    if (TryGetTypeDBObjectCollection(extraSpellID, out spellEffects))
                    {
                        foreach (SpellEffect spellEffect in spellEffects)
                        {
                            Incorporate_SpellEffect(data, spellEffect);
                        }
                    }
                }
            }
        }

        private static void Incorporate_SpellEffect(IDictionary<string, object> data, SpellEffect spellEffect)
        {
            // TODO: sometimes 1 Item can trigger 1 ItemEffect leading to multiple IsQuest SpellEffects...
            // ref. /att i:181538 -> SpellID 336988
            if (spellEffect.IsQuest())
            {
                long questID = spellEffect.EffectMiscValue_0;
                if (!data.TryGetValue("questID", out long existingQuestID))
                {
                    // we only want to attach a questID to an Item if that Quest is only linked via 1 ItemEffect...
                    long spellID = spellEffect.SpellID;
                    if (TryGetTypeDBObjectCollection(spellID, out List<ItemEffect> matchingItemEffects) && matchingItemEffects.Count > 1)
                    {
                        //LogDebug($"INFO: Ignored assignment of data 'questID' {spellEffect.EffectMiscValue_0} due to {matchingItemEffects.Count} shared ItemEffect use", data);
                        // assign this data as a provider of the questID instead since this data may link to multiple questIDs
                        Assign_QuestProviderFromData(questID, data);
                    }
                    else
                    {
                        using (IEnumerator<SpellEffect> spellEffectEnumerator = GetTypeDBObjects<SpellEffect>((se) =>
                        {
                            // quest spelleffect with either same spellID or same quest (should only be 1 if we are going to apply it to an Item)
                            return se.IsQuest() && (se.SpellID == spellID || se.EffectMiscValue_0 == questID);
                        }).GetEnumerator())
                        {
                            // we know there's 1 at least
                            spellEffectEnumerator.MoveNext();
                            // if there's a 2nd (or more) then ignore assigning the questID from a specific Spell
                            if (spellEffectEnumerator.MoveNext())
                            {
                                //LogDebug($"INFO: Ignored assignment of data 'questID' {questID} due to multiple SpellEffect use", data);
                                // assign this data as a provider of the questID instead since this data links to multiple questIDs
                                Assign_QuestProviderFromData(questID, data);
                            }
                            else
                            {
                                // we only want to attach a questID to an item if that Quest is only linked via 1 SpellEffect...
                                // and not already Sourced as a Quest
                                if (!TryGetSOURCED("questID", questID, out var sourcedQuests))
                                {
                                    Objects.Merge(data, "questID", questID);
                                    LogDebug($"INFO: Assigned Item 'questID' {questID}", data);
                                    Objects.MergeQuestData(data);
                                    TrackIncorporationData(data, "questID", questID);
                                }
                                else if (sourcedQuests.TryGetAnyMatchingGroup(q => q.ContainsKey("_unsorted"), out var matchedQuest))
                                {
                                    LogWarn($"Item 'questID' {questID} is currently listed in Unsorted but should be directly linked on the trigger group. Remove Unsorted group so the QuestID is not duplicated", data);
                                    Objects.Merge(data, "questID", questID);
                                    Objects.MergeQuestData(data);
                                    TrackIncorporationData(data, "questID", questID);
                                }
                                else
                                {
                                    LogDebug($"INFO: Ignoring Item 'questID' {questID} since it is already Sourced", data);
                                }
                            }
                        }
                    }
                }
                else if (questID != existingQuestID)
                {
                    // additional spell effects that trigger additional questIDs, we will link the data as a provider of that additional questID's Source if possible
                    Assign_QuestProviderFromData(questID, data);
                }
            }
            if (spellEffect.IsLearnedTransmogSet())
            {
                long tmogSetID = spellEffect.EffectMiscValue_0;
                // don't override any custom data... sometimes blizz hotfixes ensembles but we don't get the updated data immediately from wago
                if (!data.ContainsKey("tmogSetID"))
                {
                    Objects.Merge(data, "tmogSetID", tmogSetID);
                    TrackIncorporationData(data, "tmogSetID", tmogSetID);
                    LogDebug($"INFO: Assigned 'tmogSetID' {tmogSetID}", data);
                }
                // this is repeated later for the same data, yes, but we need to ensure some things happen in the correct order
                Incorporate_Ensemble(data);
                Incorporate_Item_TransmogSetItems(data, tmogSetID);
            }
        }

        private static void Assign_QuestProviderFromData(long questID, IDictionary<string, object> data)
        {
            // additional spell effects that trigger additional questIDs, we will link the data as a provider of that additional questID's Source if possible
            if (TryGetSOURCED("questID", questID, out var sourcedQuests))
            {
                foreach (var sourcedQuestData in sourcedQuests)
                {
                    if (ObjectData.TryGetMostSignificantObjectType(data, out ObjectData objectData, out object objKeyValue))
                    {
                        string providerType = null;
                        switch (objectData.ConvertedKey ?? objectData.ObjectType)
                        {
                            case "itemID":
                                providerType = "i";
                                break;
                            case "npcID":
                                providerType = "n";
                                break;
                            case "objectID":
                                providerType = "o";
                                break;
                            case "spellID":
                                providerType = "s";
                                break;
                        }

                        if (providerType != null)
                        {
                            Objects.MergeField_provider(sourcedQuestData, new List<object> { providerType, objKeyValue });
                            LogDebug($"INFO: Assigning {providerType}:{objKeyValue} as Provider of 'questID' {questID}", sourcedQuestData);
                        }
                        else
                        {
                            LogDebugWarn($"Unable to determine provider type for data", data);
                        }
                    }
                }
            }
        }

        private static bool CheckSymlink(IDictionary<string, object> data, params string[] commands)
        {
            return data.TryGetValue("sym", out List<object> symObj) && symObj.Count >= 1 &&
                                symObj.First() is List<object> symCmdObj && symCmdObj.Count >= 1 &&
                                symCmdObj.First() is string symCmdStr && commands.Contains(symCmdStr);
        }

        private static bool Incorporate_DataCloning(IDictionary<string, object> data)
        {
            bool cloned = false;
            long criteriaID;
            if (data.TryGetValue("_quests", out object quests))
            {
                // don't duplicate achievements in this way
                if (data.TryGetValue("achID", out long achID) && !data.ContainsKey("criteriaID"))
                {
                    LogError($"Do not use '_quests' on Achievements ({achID}). Source within the Quest group, or use 'maps' & 'altQuests' if there are multiple related Locations / Quests.");
                }
                else
                {
                    DuplicateDataIntoGroups(data, quests, "questID");
                    cloned = true;
                }
            }
            if (data.TryGetValue("_items", out object items))
            {
                // don't duplicate achievements in this way
                if (data.TryGetValue("criteriaID", out criteriaID))
                {
                    data.TryGetValue("achID", out long achID);
                    LogError($"Do not use '_items' on Criteria ({achID}:{criteriaID}). Use 'provider' instead when an Item grants credit for an Achievement Criteria.");
                }
                else
                {
                    DuplicateDataIntoGroups(data, items, "itemID");
                    cloned = true;
                }
            }
            if (data.TryGetValue("_species", out object species))
            {
                DuplicateDataIntoGroups(data, species, "speciesID");
                cloned = true;
                // don't also nest to NPCs if we are nesting species, can warn to remove the NPCs
                if (data.TryGetValue("_npcs", out object speciesNpcs))
                {
                    LogDebugWarn($"Removing _npcs {ToJSON(speciesNpcs)} since _species {ToJSON(species)} was prioritized instead", data);
                    data.Remove("_npcs");
                }
            }
            if (data.TryGetValue("_npcs", out object npcs))
            {
                // TODO: consolidate when creature/npc are the same... if that ever happens
                //DuplicateDataIntoGroups(data, npcs, "creatureID");
                DuplicateDataIntoGroups(data, npcs, "npcID");
                cloned = true;
            }
            if (data.TryGetValue("_objects", out object objects))
            {
                DuplicateDataIntoGroups(data, objects, "objectID");
                cloned = true;
            }
            if (data.TryGetValue("_spells", out object spells))
            {
                // Spells are split into multiple "useful" types
                //DuplicateDataIntoGroups(data, spells, "spellID");
                //DuplicateDataIntoGroups(data, spells, "recipeID");
                //DuplicateDataIntoGroups(data, spells, "mountID");
                cloned = true;
            }
            if (data.TryGetValue("_achievements", out object achievements))
            {
                DuplicateDataIntoGroups(data, achievements, "achID");
                cloned = true;
            }
            if (data.TryGetValue("_factions", out object factions))
            {
                DuplicateDataIntoGroups(data, factions, "factionID");
                cloned = true;
            }
            if (data.TryGetValue("_encounter", out object encounterData))
            {
                var encounterListData = Objects.CompressToList<long>(encounterData);
                int encIndex = 0;
                while (encIndex < encounterListData.Count)
                {
                    decimal encounterHash = GetEncounterHash(encounterListData[encIndex], encounterListData.Count > 1 ? encounterListData[encIndex + 1] : 0);
                    DuplicateDataIntoGroups(data, encounterHash, "_encounterHash");
                    encIndex += 2;
                }
                cloned = true;
            }
            if (data.TryGetValue("_exploration", out object exploration))
            {
                DuplicateDataIntoGroups(data, exploration, "explorationID");
                cloned = true;
            }
            if (data.TryGetValue("_flightpath", out object flightpath))
            {
                DuplicateDataIntoGroups(data, flightpath, "flightpathID");
                cloned = true;
            }
            if (data.TryGetValue("_follower", out object follower))
            {
                DuplicateDataIntoGroups(data, follower, "followerID");
                cloned = true;
            }
            if (data.TryGetValue("_mission", out object mission))
            {
                DuplicateDataIntoGroups(data, mission, "missionID");
                cloned = true;
            }

            // specifically Achievement Criteria that is cloned to another location in the addon should not be maintained where it was cloned from
            if (cloned && data.TryGetValue("criteriaID", out criteriaID))
            {
                // if the Criteria attempts to clone into an NPC which isn't Sourced, then don't remove it and add to 'providers'
                if (data.TryGetValue("_npcs", out List<object> npcObjs))
                {
                    List<long> crs = new List<long>();
                    foreach (long npcID in npcObjs.AsTypedEnumerable<long>())
                    {
                        if (!TryGetSOURCED("npcID", npcID, out var npcSources))
                        {
                            // remove the creatures which are not sourced from being reported as failed to merge
                            data.TryGetValue("achID", out long achID);
                            LogDebugWarn($"Criteria {achID}:{criteriaID} not nested to Unsourced NPC {npcID}. Consider Sourcing NPC");
                            Objects.TrackPostProcessMergeKey("npcID", npcID);
                            crs.Add(npcID);
                        }
                    }

                    if (crs.Count == npcObjs.Count)
                    {
                        Objects.Merge(data, "providers", crs.Select(n => new List<object> { "n", n }).ToList());
                        cloned = false;
                    }
                }
                // if the Criteria attempts to clone into an Object which isn't Sourced, then don't remove it and add to 'providers'
                if (data.TryGetValue("_objects", out List<object> objectObjs))
                {
                    List<long> objs = new List<long>();
                    foreach (long objectID in objectObjs.AsTypedEnumerable<long>())
                    {
                        if (!TryGetSOURCED("objectID", objectID, out var objectSources))
                        {
                            // remove the creatures which are not sourced from being reported as failed to merge
                            data.TryGetValue("achID", out long achID);
                            LogWarn($"Criteria {achID}:{criteriaID} not nested to Unsourced Object {objectID}. Consider Sourcing Object");
                            Objects.TrackPostProcessMergeKey("objectID", objectID);
                            objs.Add(objectID);
                        }
                    }

                    if (objs.Count == objectObjs.Count)
                    {
                        Objects.Merge(data, "providers", objs.Select(n => new List<object> { "o", n }).ToList());
                        cloned = false;
                    }
                }
                // if the Criteria attempts to clone into a Quest which isn't Sourced or is Unsorted, then don't remove it and convert into a 'sourceQuests' list instead
                if (data.TryGetValue("_quests", out List<object> questObjs))
                {
                    List<long> unsourcedQuests = new List<long>();
                    bool dupeUnsorted = false;
                    data.TryGetValue("achID", out long achID);
                    foreach (long questID in questObjs.AsTypedEnumerable<long>())
                    {
                        if (!TryGetSOURCED("questID", questID, out HashSet<IDictionary<string, object>> questRefs))
                        {
                            // remove the quests which are not sourced from being reported as failed to merge
                            Objects.TrackPostProcessMergeKey("questID", questID);
                            unsourcedQuests.Add(questID);
                            // if we're trying to assign a questID which isn't sourced, make sure we don't ignore the criteria to let it disappear later
                            if (data.Remove("_ignored"))
                            {
                                // ignored criteria which are being assigned a questID can be assigned as NYI so
                                // that when triggered they can be associated with the proper activity
                                // assign NYI only if there are not additional _quests
                                if (questObjs.Count == 1)
                                {
                                    data["u"] = 1;
                                    LogDebugWarn($"Criteria {achID}:{criteriaID} is ignored in UI and marked NYI to trigger reporting of proper Source", data);
                                }
                            }
                        }
                        else if (questRefs.All(d => d.ContainsKey("_unsorted")))
                        {
                            // are we trying to clone the criteria into an NYI quest(s)?
                            if (questRefs.All(d => d.ContainsKey("_nyi")))
                            {
                                // allow cloning into NYI so that it's obvious the criteria are not available
                            }
                            else
                            {
                                // remove the quests which are not sourced from being reported as failed to merge
                                Objects.TrackPostProcessMergeKey("questID", questID);
                                unsourcedQuests.Add(questID);
                                dupeUnsorted = true;
                            }
                        }
                    }

                    // if there is a single, unsourced quest linked to the criteria, just assign the questID on the criteria
                    if (unsourcedQuests.Count == 1)
                    {
                        // warn when assigning Quest matching Unsorted
                        if (dupeUnsorted)
                        {
                            LogWarn($"INFO: Criteria {achID}:{criteriaID} assigned duplicated Unsorted Quest {unsourcedQuests[0]}");
                        }
                        else
                        {
                            LogDebug($"INFO: Criteria {achID}:{criteriaID} assigned HQT Quest {unsourcedQuests[0]}");
                        }
                        Objects.Merge(data, "questID", unsourcedQuests[0]);
                        cloned = questObjs.Count != 1;
                    }
                    // if multiple unsourced quests linked to a criteria, then convert into a sourcequests list instead
                    else if (unsourcedQuests.Count == questObjs.Count)
                    {
                        Objects.Merge(data, "sourceQuests", unsourcedQuests);
                        cloned = false;
                        LogDebugWarn($"Criteria {achID}:{criteriaID} not nested to Unsorted Quest(s) {ToJSON(unsourcedQuests)}. Consider adjusting Quest listing");
                    }
                    else if (unsourcedQuests.Count > 0)
                    {
                        // report weird situation, partially unsourced quests...?
                        LogDebugWarn($"Criteria {achID}:{criteriaID} has partially sourced Quest(s): {ToJSON(questObjs)} Unsourced: {ToJSON(unsourcedQuests)}. Consider adjusting Quest listing");
                    }
                }
                // if the Criteria attempts to clone into a Spell which is on an Item, then put the Item as a 'provider' instead, if otherwise add the spell to 'providers'
                if (data.TryGetValue("_spells", out List<object> spellObjs))
                {
                    foreach (long id in spellObjs.AsTypedEnumerable<long>())
                    {
                        // Items with Spells can set 'provider' on the Criteria instead of nesting
                        if (TryGetSOURCED("spellID", id, out var spellSources)
                            || TryGetSOURCED("mountID", id, out spellSources)
                            || TryGetSOURCED("recipeID", id, out spellSources))
                        {
                            foreach (var spell in spellSources)
                            {
                                if (spell.TryGetValue("itemID", out long spellItemID))
                                {
                                    data.TryGetValue("achID", out long achID);
                                    LogDebug($"Criteria {achID}:{criteriaID} using Provider for a SpellItem {spellItemID} due to Spell {id} requirement");
                                    Objects.Merge(data, "provider", new List<object> { "i", spellItemID });
                                    cloned = false;
                                }
                            }
                        }

                        // Remaining Spells not Sourced in ATT, use provider if the Criteria has any other 'useful' data as well
                        if (cloned)
                        {
                            IEnumerable<string> usefulKeys = data.Keys.Except(IndeterminateCriteriaDataFields).Except(s => s.EndsWith("ID"));
                            data.TryGetValue("achID", out long achID);
                            if (!usefulKeys.Any())
                            {
                                // mark this criteria to be removed since it is not nested in-game and doesn't correspond to or contain any useful ATT data at this time
                                LogDebugWarn($"Criteria {achID}:{criteriaID} removed since it doesn't correspond to useful ATT data");
                                data["_remove"] = true;
                            }
                            else
                            {
                                LogDebug($"Criteria {achID}:{criteriaID} using fallback Provider for an Unsourced Spell {id}");
                                Objects.Merge(data, "provider", new List<object> { "s", id });
                                cloned = false;
                            }
                            cloned = false;
                        }

                        if (!cloned)
                        {
                            Objects.TrackPostProcessMergeKey("spellID", id);
                            Objects.TrackPostProcessMergeKey("mountID", id);
                            Objects.TrackPostProcessMergeKey("recipeID", id);
                        }
                    }
                }
                // if the Criteria attempts to clone into a Species which is not Sourced, then ignore trying to move the criteria
                //if (data.TryGetValue("_species", out List<object> speciesObjs))
                //{
                //    data.DataBreakPoint("criteriaID", 55537);
                //    data.TryGetValue("achID", out long achID);
                //    foreach (long speciesID in speciesObjs.AsTypedEnumerable<long>())
                //    {
                //        if (!TryGetSOURCED("speciesID", speciesID, out HashSet<IDictionary<string, object>> sourcedSpecies)
                //            || sourcedSpecies.Any(s => !IsObtainableData(s)))
                //        {
                //            LogDebugWarn($"Criteria {achID}:{criteriaID} not nested unsorted SpeciesID {speciesID}. Consider sourcing the SpeciesID");
                //            Objects.TrackPostProcessMergeKey("speciesID", speciesID);
                //            cloned = false;
                //        }
                //    }
                //}
            }

            // Un-cloned data which is marked as ignored should allow itself to be removed from the list
            if (!cloned && data.ContainsKey("_ignored"))
            {
                return true;
            }

            return cloned;
        }

        private static void Consolidate_General(IDictionary<string, object> data)
        {
            // dynamic config-driven validaton will perform clean up if any API data is weird and can't be fixed by contrib easily
            Validator.Validate(data);

            // validate any IProcessedField
            foreach (object value in data.Values.ToList())
            {
                if (value is IProcessedField validatedField)
                {
                    validatedField.Consolidate();
                }
            }
        }

        private static void Consolidate_providers(IDictionary<string, object> data)
        {
            if (!data.TryGetValue("providers", out object providers))
                return;

            if (!providers.TryConvert(out List<object> providersList))
                return;

            bool hasQuestGivers = data.TryGetValue("qgs", out List<object> qgs) && qgs.Count > 0;

            int i = 0;
            while (i < providersList.Count)
            {
                var provider = providersList[i];
                if (!provider.TryConvert(out List<object> providerList) || providerList.Count != 2
                    || (!providerList[0].TryConvert(out string pType))
                    || (!providerList[1].TryConvert(out decimal pID)))
                {
                    i++;
                    continue;
                }

                // validate that the referenced ID exists in this version of the addon
                switch (pType)
                {
                    case "i":
                        if (hasQuestGivers || Program.PreProcessorTags.ContainsKey("ANYCLASSIC"))
                        {
                            // if the provider is an item, we want that item to be listed as having been referenced to keep it out of Unsorted
                            Items.MarkItemAsReferenced(pID);
                        }
                        else
                        {
                            var item = Items.GetNull(pID);
                            // Items which are the 'first' provider indicate that their acquisition is what 'provides' the data
                            // and thus they must be Sourced to be properly visible for being acquired
                            if (i == 0 && (item == null || !Items.IsItemReferenced(pID)))
                            {
                                // The item isn't Sourced in Retail version
                                // Holy... there are actually a ton of these. Will Debug Log for now until they are cleaned up...
                                // There are currently about 1000 warnings due to unsourced Items of this nature
                                LogDebugWarn($"Non-Sourced 'provider-item' {pID}", data);
                            }
                            else if (item.TryGetValue("u", out long u) && u == 1)
                            {
                                // The item was classified as never being implemented
                                LogDebug($"INFO: Removed NYI 'provider-item' {pID}", data);
                                providersList.RemoveAt(i);
                                i--;
                            }
                        }
                        break;
                    case "n":
                        NPCS_WITH_REFERENCES[(long)pID] = true;
                        MarkCustomHeaderAsRequired((long)pID);
                        break;
                    case "o":
                        OBJECTS_WITH_REFERENCES[(long)pID] = true;
                        break;
                    case "a":
                        break;
                    case "s":
                        break;
                    default:
                        LogError($"Invalid Data Value: provider-type {pType}", data);
                        break;
                }
                i++;
            }
        }

        private static void Consolidate_sourceQuests(IDictionary<string, object> data)
        {
            if (!data.TryGetValue("sourceQuests", out List<object> sourceQuests))
                return;

            foreach (var sourceQuestRef in sourceQuests)
            {
                if (!sourceQuestRef.TryConvert(out long sourceQuestID))
                {
                    LogError($"Non-number 'sourceQuests' value used: {sourceQuestRef}");
                    continue;
                }

                // TODO: eventually add check for _unsorted to ensure all sourceQuests are present in Main list
                if (!TryGetSOURCED("questID", sourceQuestID, out HashSet<IDictionary<string, object>> sourceQuestObjs))
                {
                    // Source Quest not in database *anywhere*
                    LogError($"Referenced Source Quest {sourceQuestID} has not been Sourced");
                    continue;
                }

                var sourceQuest = sourceQuestObjs.FirstOrDefault(q => !q.ContainsKey("_unsorted"));
                // source quest of this data is considered a breadcrumb, so note in the source quest it has a specific follow up
                if (sourceQuest.TryGetValue("isBreadcrumb", out bool isBreadcrumb) && isBreadcrumb)
                {
                    // Source Quest is a breadcrumb, add current quest into breadcrumb's next quests list
                    if (!sourceQuest.TryGetValue("nextQuests", out List<object> nextQuests))
                    {
                        sourceQuest.Add("nextQuests", nextQuests = new List<object>());
                    }

                    if (data.TryGetValue("questID", out long questID) && !nextQuests.Contains(questID))
                    {
                        nextQuests.Add(questID);
                    }
                }
            }
        }

        private static void Consolidate_altQuests(IDictionary<string, object> data)
        {
            if (!data.TryGetValue("altQuests", out List<object> altQuests))
                return;

            foreach (var altQuestRef in altQuests)
            {
                if (!altQuestRef.TryConvert(out long altQuestID))
                {
                    LogError($"Non-number 'altQuests' value used: {altQuestRef}");
                    continue;
                }

                if (!Objects.AllQuests.ContainsKey(altQuestID))
                {
                    // Source Quest not in database
                    LogDebugWarn($"Referenced Alternate Quest {altQuestID} has not been Sourced");
                }
            }
        }

        /// <summary>
        /// Validates that certain conflicting fields do not simultaneously exist within one piece of data. May indicate external data is bad or weird or needs fixing
        /// </summary>
        private static void Consolidate_ConflictingFields(IDictionary<string, object> data)
        {
            // races - r
            if (data.ContainsKey("r") && data.ContainsKey("races"))
            {
                LogDebug($"INFO: Conflicting fields: races & r. Dropping 'r' as pre-caution.", data);
                data.Remove("r");
            }

            // Sourced BoE Items with requireSkill which are not directly linked to a Profession-based Filter
            if (data.ContainsKey("requireSkill") &&
                data.ContainsKey("itemID") &&
                !data.ContainsKey("_unsorted") &&
                (!data.TryGetValue("b", out long b) || b == 2) &&
                data.TryGetValue("f", out long f) && (f == (long)Objects.Filters.Reagent))
            {
                if (!data.ContainsAnyKey(new[] { "sourceID", "recipeID", "spellID" }))
                {
                    LogDebug($"INFO: Conflicting fields: b/f/requireSkill. Dropping 'requireSkill' as pre-caution.", data);
                    data.Remove("requireSkill");
                }
            }

            // awp & rwp
            if (data.TryGetValue("awp", out long awp) && data.TryGetValue("rwp", out long rwp))
            {
                // if something is added in the current patch more recently than it was removed, or known to be removed, then do include the 'rwp' value
                if (awp > rwp && CURRENT_SHORT_RELEASE_VERSION >= awp)
                {
                    LogDebug($"INFO Removed 'rwp' {rwp} due to 'awp' {awp} (within the current Version {CURRENT_SHORT_RELEASE_VERSION}) being more recent", data);
                    data.Remove("rwp");
                }
            }

            // Unobtainable Content with Forcibly-Obtainable Content within
            if (data.TryGetValue("_u", out long forceObtainable) && forceObtainable == 0 && data.TryGetValue("u", out long unob) && unob < 3)
            {
                data.Remove("u");
                data.Remove("rwp");
                LogDebug($"INFO: Removed 'u={unob}' since it is a forcibly-obtainable Thing or one exists within", data);
            }

            // costs/providers
            if (data.TryGetValue("cost", out object costObj) && data.TryGetValue("providers", out List<object> providers) && costObj is Cost cost)
            {
                for (int i = providers.Count - 1; i >= 0; i--)
                {
                    if (!providers[i].TryConvert(out List<object> provider))
                    {
                        continue;
                    }

                    if (provider.SafeIndex(0) is string pType && pType == "i" && provider.SafeIndex(1).TryConvert(out long pId))
                    {
                        if (cost.GetCost(pType, pId) != null)
                        {
                            LogDebugWarn($"Item {pId} used for both Provider and Cost on same data. Removing 'provider'", data);
                            providers.RemoveAt(i);
                        }
                    }
                }
            }

            // Items with Spells which are themselves directly Sourced as Recipe -- remove that spellID from the Item
            if (data.TryGetValue("itemID", out long itemID) && data.TryGetValue("spellID", out long spellID))
            {
                //foreach (var spellSources in GetAllMatchingSOURCED("spellID", spellID))
                //{
                //    if (spellSources.Any(d => !d.ContainsKey("itemID")))
                //    {
                //        LogDebug($"INFO: Removed spellID {spellID} from Item {itemID} which is Sourced as a standalone Spell", data);
                //        data.Remove("spellID");
                //        break;
                //    }
                //}
                foreach (var recipeSources in GetAllMatchingSOURCED("recipeID", spellID))
                {
                    if (recipeSources.Any(d => d.TryGetValue("recipeID", out long recipeID) && recipeID == spellID))
                    {
                        LogDebug($"INFO: Removed spellID {spellID} from Item {itemID} which is Sourced as a Recipe", data);
                        data.Remove("spellID");
                        break;
                    }
                }
            }
        }

        private static void Consolidate_awprwp(IDictionary<string, object> data)
        {
            if (!data.TryGetValue("awp", out long awp) || !data.TryGetValue("rwp", out long rwp))
                return;

            // if this Thing is marked as removed in the past, but is currently available, drop the 'rwp' value
            if (awp > rwp && awp <= CURRENT_RELEASE_VERSION)
            {
                data.Remove("rwp");
                LogDebug($"INFO: Removed RWP:{rwp} which is before AWP:{awp}", data);
            }
        }

        private static void Consolidate_item(IDictionary<string, object> data)
        {
            if (!data.TryGetValue("itemID", out long itemID)) return;

            // Maybe this empty Item should actually be a Character Unlock
            if (!data.ContainsKey("g") && !data.ContainsKey("sym") && !data.ContainsKey("type")
                // not repeatable of some sort
                && !data.ContainsKey("isDaily")
                && !data.ContainsKey("isWeekly")
                && !data.ContainsKey("isMonthly")
                && !data.ContainsKey("isYearly")
                && !data.ContainsKey("repeatable")
                // not illusions...
                && !data.ContainsKey("illusionID")
                && data.TryGetValue("questID", out long questID))
            {
                Items.TryGetName(data, out string name);

                if (TryGetSOURCED("questID", questID, out var referencedAsQuest))
                {
                    // basically if Parser has figured that something should have a questID automatically, but we've assigned that questID already within the addon
                    // don't try to switch that Thing into a Character Unlock type
                    LogDebug($"INFO: Thing with questID {questID} being ignored as Character Unlock", data);
                }
                else
                {
                    data["type"] = "characterUnlockQuestID";
                    LogWarn($"Add to CharacterItemDB.lua or convert to proper Quest with 'provider': iq({itemID}, {questID});					-- {name}");
                }
            }

            // Items with recipeID must have a requireSkill and proper filter, if a different filter is present, then clear the recipeID and requireSkill
            if (data.TryGetValue("f", out long f))
            {
                Objects.Filters filter = (Objects.Filters)f;
                if (filter != Objects.Filters.Recipe)
                {
                    if (data.TryGetValue("recipeID", out long recipeID))
                    {
                        Items.TryGetName(data, out string name);
                        LogDebug($"INFO: Removing invalid Recipe {recipeID} data from Item '{name}' due to Filter {filter}", data);
                        data.Remove("requireSkill");
                        data.Remove("recipeID");
                    }
                }
            }

            // Items with only 'n' providers should just use 'crs' for simplicity
            // TODO: perhaps the specific 'Providers' vs. 'Creatures' wording in tooltips is intended specifically, maybe revise providers handling eventually
            //if (data.TryGetValue("providers", out List<object> providers))
            //{
            //    if (providers.AsTypedEnumerable<List<object>>().All(p => p[0] as string == "n"))
            //    {
            //        LogDebugWarn($"Item {itemID} with all 'n' providers converted to 'crs'", data);
            //        foreach (var p in providers.AsTypedEnumerable<List<object>>())
            //        {
            //            Objects.Merge(data, "crs", p[1]);
            //        }
            //        data.Remove("providers");
            //    }
            //}
        }

        /// <summary>
        /// Verifies the 'lvl' tag within the data confines to the already-determined minLevel for the scope of this data
        /// </summary>
        /// <param name="data"></param>
        private static void Consolidate_lvl(IDictionary<string, object> data)
        {
            // If the level of this object is less than the current minimum level, we can safely remove it.
            if (data.TryGetValue("lvl", out object lvlRef))
            {
                if (lvlRef is List<object> lvls)
                {
                    // only remove the lvl reqs if it's not a range
                    if (lvls.Count < 2)
                    {
                        var level = Convert.ToInt64(lvls[0]);
                        if (level <= NestedMinLvl) data.Remove("lvl");
                        else
                        {
                            // replace the single value list with the single value to save on memory
                            data["lvl"] = level;
                        }
                    }
                }
                else
                {
                    var level = Convert.ToInt64(lvlRef);
                    if (level <= NestedMinLvl) data.Remove("lvl");
                }
            }
        }

        /// <summary>
        /// Checks the data for any required data relationships based on existing fields
        /// </summary>
        private static void CheckRequiredDataRelationships(IDictionary<string, object> data)
        {
            // Criteria groups need to know their associated Achievement
            if (data.TryGetValue("criteriaID", out decimal criteriaID))
            {
                if (!data.ContainsKey("achID"))
                {
                    LogError($"'criteriaID' {criteriaID} missing 'achID' [{CurrentParentGroup.Value.Key}:{CurrentParentGroup.Value.Value}]", data);
                }
            }

            // OnTooltip references should be stored in ExportDB.OnTooltipDB, so mark those which are referenced
            CheckExportDataRefs(data, "OnTooltip");

            // OnUpdate references should be stored in ExportDB.OnUpdateDB, so mark those which are referenced
            CheckExportDataRefs(data, "OnUpdate");

            // OnInit references should be stored in ExportDB.OnInitDB, so mark those which are referenced
            CheckExportDataRefs(data, "OnInit");

            // OnInit references should be stored in ExportDB.OnClickDB, so mark those which are referenced
            CheckExportDataRefs(data, "OnClick");
        }

        private static void CheckExportDataRefs(IDictionary<string, object> data, string field)
        {
            if (data.TryGetValue(field, out string fieldRef))
            {
                var ontooltipName = fieldRef.Replace($"_.{field}DB.", string.Empty);
                if (!EXPORTDATA_WITH_REFERENCES.TryGetValue(field, out List<string> names))
                {
                    EXPORTDATA_WITH_REFERENCES[field] = names = new List<string>();
                }

                if (!names.Contains(ontooltipName))
                {
                    names.Add(ontooltipName);
                }
            }
        }

        private static void CheckTrackableFields(IDictionary<string, object> data)
        {
            // This logic is fine, but might be intentional in some cases to have tooltips indicate 'daily' etc.
            // even when the data itself has no way to actually 'track' completion. Maybe add this at some other time

            //if (data.ContainsAnyKey(TrackableFields["Provided"]))
            //{
            //    // currently nothing to handle concerning trackable data
            //}
            //else
            //{
            //    string[] trackingRequiredKeys = data.Keys.Where(k => TrackableFields["Required"].Contains(k)).ToArray();
            //    if (trackingRequiredKeys.Any())
            //    {
            //        LogDebugWarn($"Tracking fields {ToJSON(trackingRequiredKeys)} removed from non-tracking data:", data);
            //        foreach (string field in trackingRequiredKeys)
            //        {
            //            data.Remove(field);
            //        }
            //    }
            //}
        }

        private static void CheckObjectConversion(IDictionary<string, object> data)
        {
            if (ObjectData.TryFindObjectConversion(data, out ObjectData conversionObject, out object convertValue))
            {
                LogDebug($"INFO: Type Conversion {conversionObject.ConvertedKey}=>{conversionObject.ObjectType} ({convertValue})");
                data.Remove("type");
                data.Remove(conversionObject.ConvertedKey);
                data[conversionObject.ObjectType] = convertValue;
            }
        }

        private static void IncrementTypeUseCount(string key, decimal id)
        {
            Dictionary<decimal, int> idCounts = TypeUseCounts[key];
            idCounts.TryGetValue(id, out int count);
            count += 1;
            idCounts[id] = count;
        }

        /// <summary>
        /// Returns whether the data meets the current parser 'timeline' expectations
        /// </summary>
        private static bool CheckTimeline(IDictionary<string, object> data, IDictionary<string, object> parentData)
        {
            // Check to see what patch this data was made relevant for.
            if (data.TryGetValue("timeline", out object timelineRef) && timelineRef is Timeline timeline)
            {
                int removed = 0;
                var lastIndex = timeline.EntryCount - 1;
                long addedPatch = 10000;
                long removedPatch = 10000;
                // we will track if a Thing is specifically 're-added' and consider that a 'force timeline' automatically so the data
                // doesn't need to be adjusted for every situation
                bool readded = false;

                // if the timeline has more than 1 Entry and the earliest entry is not an 'adding' change then warn
                // still over a thousand places where timelines start with a 'removed' change first if not excluding before more recent data
                var firstEntry = timeline.Entries[0];
                if (CurrentParseStage == ParseStage.Validation && timeline.EntryCount > 1 && firstEntry.Version > 80000 && !firstEntry.AddedData)
                {
                    LogWarn($"Timeline contains '{firstEntry.Change}' change @ earliest patch -> {firstEntry}", data);
                }

                for (int index = 0; index < timeline.EntryCount; index++)
                {
                    var entry = timeline.Entries[index];
                    switch (entry.Change)
                    {
                        // Note: Adding command options here requires adjusting the filter Regex for 'timeline' entries during MergeStringArrayData
                        case "created":
                            {
                                if (CURRENT_SHORT_RELEASE_VERSION < entry.Version)
                                {
                                    // Not implemented yet and doesn't exist in the database.
                                    return false;    // Invalid
                                }
                                else if (CURRENT_RELEASE_VERSION < entry.LongVersion)
                                {
                                    //Console.Write("NOT CREATED: ");
                                    //Console.WriteLine(ToJSON(data));
                                    // Not implemented yet and doesn't exist in the database.
                                    return false;    // Invalid
                                }

                                // Mark this as Never Implemented
                                if (!ProcessingUnsortedCategory)
                                    removed = 1;
                                break;
                            }
                        case "added":
                            {
                                // If it hasn't happened yet, then do a thing.
                                if (CURRENT_SHORT_RELEASE_VERSION < entry.Version)
                                {
                                    // If this is the first patch the thing was added...
                                    if (index == 0)
                                    {
                                        // Not implemented yet and likely doesn't exist in the database.
                                        // NOTE: If an item exists in the database but wasn't made available, use "created" instead!
                                        return false;    // Invalid
                                    }
                                }
                                else if (CURRENT_RELEASE_VERSION < entry.LongVersion)
                                {
                                    //Console.Write("NOT ADDED: ");
                                    //Console.WriteLine(ToJSON(data));
                                    // If this is the first patch the thing was added...
                                    if (index == 0)
                                    {
                                        // Not implemented yet and likely doesn't exist in the database.
                                        // NOTE: If an item exists in the database but wasn't made available, use "created" instead!
                                        return false;    // Invalid
                                    }
                                }
                                else
                                {
                                    if (removed == 2)
                                    {
                                        readded = true;
                                    }
                                    // Cancel the Removed tag.
                                    removed = 0;
                                }

                                // Mark the most relevant patch this was added or comes back
                                if (entry.Version <= CURRENT_SHORT_RELEASE_VERSION || removed > 0)
                                {
                                    timeline.CurrentEntry = index;
                                    addedPatch = entry.Version;
                                }
                                break;
                            }
                        case "deleted":
                            {
                                // deleted only affects if the parse version has passed the timeline version
                                if (CURRENT_RELEASE_VERSION >= entry.LongVersion)
                                {
                                    // the last entry in the timeline is this deleted change
                                    if (index == lastIndex)
                                    {
                                        // We don't want things that got deleted to be in the addon.
                                        // NOTE: If it's not the last entry, that means it might have been readded later?
                                        // CRIEVE NOTE: Braghe wanted Debug Mode to not completely delete a thing from the exported Debug files...
                                        // Deleting it from the actual database is actually expected for the real builds,
                                        // so don't remove this. This is how I want it. Thanks!
                                        if (!DebugMode) return false;    // Invalid
                                    }

                                    // just in case parsing with Debug and verifying in-game... we would want Deleted to show as Removed
                                    removed = 4;
                                    readded = false;
                                    // Mark the first patch this was removed on. (the upcoming patch)
                                    if (removedPatch <= 10000)
                                    {
                                        timeline.CurrentEntry = index;
                                        removedPatch = entry.Version;
                                    }
                                }
                                break;
                            }
                        case "removed":
                            {
                                if (CURRENT_RELEASE_VERSION >= entry.LongVersion)
                                {
                                    removed = 2;
                                    readded = false;
                                    // Mark the most recent patch this was removed
                                    if (removedPatch <= 10000)
                                    {
                                        timeline.CurrentEntry = index;
                                        removedPatch = entry.Version;
                                    }
                                }
                                else
                                {
                                    // Mark the first patch this was removed on. (the upcoming patch)
                                    if (removedPatch <= 10000) removedPatch = entry.Version;
                                }
                                break;
                            }
                    }
                }

                // final removed type for the current parser patch
                switch (removed)
                {
                    // Never Implemented
                    case 1:
                        data["u"] = 1;
                        break;
                    case 4: // Deleted
                    case 2: // Removed From Game
                        data["u"] = 2;
                        break;
                    default:
                        // if a timeline 'specifically' indicates a Thing is available, we will let that 'bubbleOut' the u value
                        // as long as the Thing itself isn't specifically also marked with 'u' directly
                        // as long as the Thing itself isn't an 'objective'
                        if (data.ContainsAnyKey("u", "objectiveID"))
                            break;

                        // or inherited a 'timeline' to itself
                        if (data.TryGetValue("_inherited", out List<string> inheritedFields) && inheritedFields.Contains("timeline"))
                            break;

                        // ignore this thing being forcibly-obtainable due to an 'added' timeline when the parent group contains a 'rwp' beyond the 'awp' of this group
                        // if _forcetimeline is specified, then don't let parent's timeline override this timeline
                        if (!data.ContainsKey("_forcetimeline") && parentData.TryGetValue("rwp", out long parentRwp) && parentRwp >= addedPatch)
                        {
                            if (readded)
                            {
                                LogDebug($"INFO: timeline indicates available Thing {addedPatch} within removed Parent {parentRwp} => Consider re-added", data);
                                removedPatch = 10000;
                            }
                            else
                            {
                                LogDebug($"INFO: timeline indicates available Thing {addedPatch} within removed Parent {parentRwp} => Consider 'removed'", data);
                                // also inherit the rwp so that further children don't also reverse force-obtainable themselves back over the parent
                                removedPatch = parentRwp;
                            }
                            break;
                        }

                        data["_u"] = 0;
                        break;
                }

                // Mark when this thing was put into (or back into) the game.
                if (addedPatch > 10000)
                {
                    if (data.TryGetValue("awp", out long awp) && awp != addedPatch)
                    {
                        LogDebugWarn($"Field replaced 'awp': {addedPatch} => {awp}", data);
                    }
                    data["awp"] = addedPatch; // "Added With Patch"
                }

                // Future Unobtainable
                if (removedPatch > 10000 && !readded)
                {
                    if (data.TryGetValue("rwp", out long rwp) && rwp != removedPatch)
                    {
                        LogDebugWarn($"Field replaced 'rwp': {removedPatch} => {rwp}", data);
                    }
                    data["rwp"] = removedPatch; // "Removed With Patch"
                }
            }

            return true;
        }

        private static void ConvertObjectiveData(IDictionary<string, object> data)
        {
            // Grab any coords for this objective if existing
            data.TryGetValue("coords", out List<object> coords);

            if (!data.TryGetValue("_parent", out IDictionary<string, object> parentData))
                return;

            // Convert various 'providers' data into sub-groups on the parent data
            if (data.TryGetValue("providers", out List<object> providers))
            {
                foreach (List<object> provider in providers.AsTypedEnumerable<List<object>>())
                {
                    if (!provider[1].TryConvert(out long pID))
                        continue;

                    Dictionary<string, object> providerData = null;
                    string pType = provider[0] as string;
                    switch (pType)
                    {
                        // Items can simply be Sourced under the parent
                        case "i":
                            if (!TryGetSOURCED("itemID", pID, out _))
                            {
                                Items.MarkItemAsReferenced(pID);
                                providerData = new Dictionary<string, object> { { "itemID", pID } };
                                Objects.Merge(parentData, "g", providerData);
                            }
                            break;
                        // Objects can be Sourced under the parent with attached coords if any
                        case "o":
                            if (!TryGetSOURCED("objectID", pID, out _) && IsObtainableData(parentData))
                            {
                                providerData = new Dictionary<string, object> { { "objectID", pID } };
                                if (coords != null)
                                {
                                    providerData["coords"] = coords;
                                }
                                Objects.Merge(parentData, "g", providerData);
                            }
                            break;
                        // NPCs can be Sourced under the parent with attached coords if any
                        case "n":
                            if (!TryGetSOURCED("npcID", pID, out _) && IsObtainableData(parentData))
                            {
                                providerData = new Dictionary<string, object> { { "npcID", pID } };
                                if (coords != null)
                                {
                                    providerData["coords"] = coords;
                                }
                                Objects.Merge(parentData, "g", providerData);
                            }
                            break;
                    }
                    Validate_ReferencedIDs(providerData);
                    LogDebug($"Nested 'provider' {pType}:{pID} to parent from Objective", parentData);
                }
            }

            // Cost for objectives merges into 'cost' on the parent data
            if (data.TryGetValue("cost", out object costObj) && costObj.TryConvert(out Cost cost))
            {
                Objects.Merge(parentData, "cost", cost);
                LogDebug($"Merged 'cost' to parent from Objective {cost}", parentData);
            }
        }

        private static bool IsObtainableData(IDictionary<string, object> data)
        {
            return !data.ContainsKey("_unsorted")
                && !data.ContainsKey("_nyi")
                && (!data.TryGetValue("u", out long u) || u > 2);
        }

        /// <summary>
        /// Duplicates a list of group objects into the group lists under the associated groupIDs of a given type (quest/item/npc/...)
        /// </summary>
        /// <param name="groupIDs"></param>
        /// <param name="groupList"></param>
        /// <param name="type"></param>
        private static void DuplicateGroupListIntoObjects(List<object> groupIDs, IDictionary<string, object> data, string type)
        {
            // duplicate the data into the sourced data by type
            foreach (object dupeGroupID in groupIDs)
            {
                if (dupeGroupID.TryConvert(out decimal groupID))
                {
                    Objects.PostProcessMerge(type, groupID, data);
                }
                else
                {
                    LogWarn($"Trying to Post-Process Merge using a non-numeric key: {dupeGroupID} for type {type}");
                }
            }
        }

        /// <summary>
        /// Process the Category Object.
        /// </summary>
        /// <param name="data">The Category data.</param>
        /// <param name="categoryID">The Category ID.</param>
        private static void ProcessCategoryObject(IDictionary<string, object> data, long categoryID)
        {
            CATEGORIES_WITH_REFERENCES[categoryID] = true;
            if (!CategoryDB.TryGetValue(categoryID, out Dictionary<string, object> categoryData))
            {
                categoryData = new Dictionary<string, object>();
                LogWarn($"CATEGORY MISSING FOR {categoryID}!", data);
                if (data.TryGetValue("icon", out string icon))
                {
                    if (!categoryData.ContainsKey("icon"))
                    {
                        // Assign the icon and then inform the engineer.
                        categoryData["icon"] = icon.Replace("\\", "/");
                        LogWarn($"CATEGORY ICON MISSING FOR {categoryID} : ASSIGNED {icon} FROM SOURCE.");
                    }
                    else
                    {
                        LogDebug($"CATEGORY ICON ALREADY IN DATABASE FOR {categoryID}: You can probably delete it from the source file.");
                    }
                }
                else
                {
                    // Ignore that the icon is missing... for now.
                }
                if (data.TryGetValue("name", out string name))
                {
                    if (!categoryData.ContainsKey("readable"))
                    {
                        // Assign the readable and then inform the engineer.
                        categoryData["readable"] = name;
                        LogWarn($"CATEGORY READABLE MISSING FOR {categoryID} : ASSIGNED {name} FROM SOURCE.");
                    }
                    else
                    {
                        LogDebug($"CATEGORY READABLE ALREADY IN DATABASE FOR {categoryID}: You can probably delete it from the source file.");
                    }

                    if (!categoryData.ContainsKey("text"))
                    {
                        // Assign the text and then inform the engineer.
                        categoryData["text"] = new Dictionary<string, object> { { "en", name } };
                        LogWarn($"CATEGORY TEXT MISSING FOR {categoryID} : ASSIGNED {name} FROM SOURCE.");
                    }
                    else
                    {
                        LogDebug($"CATEGORY TEXT ALREADY IN DATABASE FOR {categoryID}: You can probably delete it from the source file.");
                    }
                }
                else
                {
                    // Ignore that the readable is missing... for now.
                }

                if (categoryData.Any())
                {
                    CategoryDB[categoryID] = categoryData;
                    if (!DebugMode)
                    {
                        Log("Activating Debug Mode! (Press Enter to continue...)");
                        Log("Update CategoryDB.lua from the Debugging folder.");
                        DebugMode = true;
                        Framework.WaitForUser();
                    }
                }
            }
        }

        /// <summary>
        /// Attempts to find the recipe ID in the already parsed data which corresponds to this item.... by name
        /// TODO: this is temporary until all Item-Recipes are mapped in ItemRecipes.lua
        /// </summary>
        /// <param name="data"></param>
        private static void TryFindRecipeID(IDictionary<string, object> data)
        {
            // All Recipes have currently been migrated to ProfDBs, Parser no longer needs to 'guess' Recipes!
            return;

            // don't apply a recipeID to data which is not an item or is a Toy or has a questID (Reaves Modules... argghhh)
            if (!data.ContainsKey("itemID") || data.ContainsKey("questID"))
                return;

            // all recipes require a skill
            if (!data.TryGetValue("requireSkill", out long requiredSkill))
                return;

            Items.TryGetName(data, out string name);
            // see if a matching recipe name exists for this skill, and use that recipeID
            if (Objects.FindRecipeForData(requiredSkill, data, out long recipeID))
            {
                data["recipeID"] = recipeID;
            }
            else if (recipeID == 0 && !ProcessingUnsortedCategory)
            {
                if (!data.TryGetValue("u", out long u) || (u != 1 && u != 2))
                {
                    // this can always be reported because it should always be actual, available in-game recipes which have no associated RecipeID
                    LogWarn($"Failed to guess RecipeID for '{name}' with data: {ToJSON(data)}");
                }
            }
        }

        /// <summary>
        /// Converts the Specific 'requireSkill' field of the data to the General 'requireSkill'
        /// </summary>
        /// <param name="data"></param>
        private static void CheckRequireSkill(IDictionary<string, object> data)
        {
            if (data.TryGetValue("requireSkill", out long requiredSkill))
            {
                if (Objects.SKILL_ID_CONVERSION_TABLE.TryGetValue(requiredSkill, out long newRequiredSkill))
                {
                    data["requireSkill"] = newRequiredSkill;
                }
                else
                {
                    switch (requiredSkill)
                    {
                        // https://www.wowhead.com/skill=
                        case 40:    // Rogue Poisons
                        case 149:   // Wolf Riding
                        case 150:   // Tiger Riding
                        case 762:   // Riding
                        case 849:   // Warlock
                        case 0: // Explicitly ignoring.
                                // Ignore! (and remove!)
                            data.Remove("requireSkill");
                            break;
                        default:
                            Log($"Missing Skill ID in Conversion Table: {requiredSkill}{Environment.NewLine}{ToJSON(data)}");
                            break;
                    }
                }
            }
        }

        /// <summary>
        /// Checks to assign an heirloomID to the data if it meets the criteria of being an heirloom
        /// </summary>
        /// <param name="data"></param>
        private static void CheckHeirloom(IDictionary<string, object> data)
        {
            if (data.TryGetValue("q", out long quality))
            {
                if (quality == 7 && data.TryGetValue("itemID", out object itemID))
                {
                    // Get the filter for this Item
                    Objects.Filters filter = Objects.Filters.Ignored;
                    if (data.TryGetValue("f", out long f))
                    {
                        if (f >= 0)
                        {
                            // Parse it!
                            filter = (Objects.Filters)f;
                        }
                    }

                    // Heirlooms quality for non-equippable Items are not really Heirlooms
                    switch (filter)
                    {
                        case Objects.Filters.Ignored:
                        case Objects.Filters.Consumable:
                        case Objects.Filters.Faction:
                        case Objects.Filters.Toy:
                        case Objects.Filters.Quest:
                        case Objects.Filters.Recipe:
                        case Objects.Filters.Mount:
                            return;
                    }

                    //LogDebugFormatted("ItemID:{0} Marked as Heirloom. Filter: {1}", itemID, filter.ToString());
                    data["heirloomID"] = itemID;
                    if (data.ContainsKey("ignoreSource"))
                    {
                        Log($"WTF WHY IS THIS HEIRLOOM {itemID} IGNORING SOURCE IDS?!");
                        Framework.WaitForUser();
                    }
                    else if (data.ContainsKey("ignoreBonus"))
                    {
                        Log($"WTF WHY IS THIS HEIRLOOM {itemID} IGNORING BONUS IDS?!");
                        Framework.WaitForUser();
                    }
                }
            }
        }

        /// <summary>
        /// Returns the minimum level requirement for this data
        /// </summary>
        /// <param name="data"></param>
        /// <returns></returns>
        private static long? GetDataMinLevel(IDictionary<string, object> data)
        {
            // If the level of this object is less than the current minimum level, we can safely remove it.
            if (data.TryGetValue("lvl", out object lvlRef))
            {
                if (lvlRef is List<object> lvls && lvls.Count > 0)
                    return Convert.ToInt64(lvls[0]);
                else if (lvlRef is int)
                    return Convert.ToInt64(lvlRef);
            }
            return null;
        }

        private static void DuplicateDataIntoGroups(IDictionary<string, object> data, object groups, string type)
        {
            // only need to setup the merge data on the first pass
            if (!MergeItemData) return;

            var groupIDs = Objects.CompressToList(groups) ?? new List<object> { groups };
            if (groupIDs != null && ObjectData.TryGetMostSignificantObjectType(data, out ObjectData objectData, out object _))
            {
                switch (objectData.ObjectType)
                {
                    case "criteriaID":
                        if (CurrentParentGroup != null)
                        {
                            var parent = CurrentParentGroup.Value;
                            // duplicate from an achID/criteriaID source
                            if (parent.Key == "achID")
                            {
                                if (!data.ContainsKey(parent.Key))
                                {
                                    data.Add(parent.Key, parent.Value);
                                }
                                else
                                {
                                    // child already contains the parent key value? weird but replace anyway
                                    data[parent.Key] = parent.Value;
                                }
                            }
                        }

                        // verify the criteria has the achieve information before duplicating
                        if (data.ContainsKey("achID"))
                        {
                            DuplicateGroupListIntoObjects(groupIDs, data, type);
                        }
                        else
                        {
                            LogWarn("Failed to duplicate criteria object due to missing 'achID'", data);
                        }
                        break;
                    case "achID":
                        // duplicated achievements should be ignored for their progress
                        IDictionary<string, object> cloned = new Dictionary<string, object>(data)
                        {
                            ["sourceIgnored"] = true
                        };
                        // verify that random other stuff contained within Achievements is not duplicated.... (like Raid Encounters...)
                        cloned.Remove("g");
                        cloned.Remove("sym");
                        //if (cloned.TryGetValue("g", out List<object> achGroups))
                        //{
                        //    List<object> cleanedGroups = new List<object>();
                        //    foreach (object achGroup in achGroups)
                        //    {
                        //        // something inside the achievement that contains its own things... don't duplicate that
                        //        if (achGroup is IDictionary<string, object> groupInfo && !groupInfo.ContainsKey("g"))
                        //            cleanedGroups.Add(achGroup);
                        //    }
                        //    cloned["g"] = cleanedGroups;
                        //}
                        DuplicateGroupListIntoObjects(groupIDs, cloned, type);
                        break;
                    case "objectiveID":
                        if (CurrentParentGroup != null)
                        {
                            var parent = CurrentParentGroup.Value;
                            // duplicate from an achID/criteriaID source
                            if (parent.Key == "questID")
                            {
                                if (!data.ContainsKey(parent.Key))
                                {
                                    data.Add(parent.Key, parent.Value);
                                }
                                else
                                {
                                    // child already contains the parent key value? weird but replace anyway
                                    data[parent.Key] = parent.Value;
                                }
                            }
                        }

                        // verify the criteria has the achieve information before duplicating
                        if (data.ContainsKey("questID"))
                        {
                            DuplicateGroupListIntoObjects(groupIDs, data, type);
                        }
                        else
                        {
                            LogWarn("Failed to duplicate criteria object due to missing 'questID'", data);
                        }
                        break;
                        // handle other types of duplication sources if necessary
                }
            }
        }

        private static decimal GetEncounterHash(long encounterID, long difficultyID)
        {
            if (difficultyID < 0) return encounterID + ((Math.Abs(difficultyID) - 1000000) / 10000M);
            // expecting difficultyID to be a positive, 100-999 value
            return encounterID + difficultyID / 1000M;
        }

        internal static bool TryGetTypeDBObject<T>(long id, out T data)
            where T : IDBType
        {
            if (TypeDB.TryGetValue(typeof(T).Name, out IDictionary<long, IDBType> db) &&
                db.TryGetValue(id, out IDBType obj) &&
                obj is T dbData)
            {
                data = dbData;
                return true;
            }

            data = default;
            return false;
        }

        private static IEnumerable<T> GetTypeDBObjects<T>(Func<T, bool> check)
            where T : IDBType
        {
            if (!TypeDB.TryGetValue(typeof(T).Name, out IDictionary<long, IDBType> db)) yield break;

            foreach (KeyValuePair<long, IDBType> kvp in db)
            {
                if ((kvp.Value is T dbData) && check(dbData))
                {
                    yield return dbData;
                }
            }
        }

        internal static bool TryGetTypeDBObjectChildren<T>(IDBType data, out List<T> children)
            where T : IDBType
        {
            return TryGetTypeDBObjectCollection(data.ID, out children);
        }

        private static bool TryGetTypeDBObjectCollection<T>(long collectionID, out List<T> children, string subname = null)
            where T : IDBType
        {
            if (TypeDB.TryGetValue(typeof(T).Name + (subname ?? nameof(TypeCollection<T>)), out var typeDBCollection) &&
                typeDBCollection.TryGetValue(collectionID, out IDBType childCollection) &&
                childCollection is TypeCollection<T> childTrees)
            {
                children = childTrees.Collection;
                return true;
            }

            children = default;
            return false;
        }

        private static IEnumerable<T> GetAllNestedTypeDBObjects<T>(T obj)
            where T : IDBType
        {
            if (TryGetTypeDBObjectChildren(obj, out List<T> nested))
            {
                foreach (T child in nested)
                {
                    yield return child;

                    foreach (T id in GetAllNestedTypeDBObjects(child))
                    {
                        yield return id;
                    }
                }
            }

            yield break;
        }

        private class TierList
        {
            public Dictionary<long, List<object>> FilteredLists = new Dictionary<long, List<object>>();
            public Dictionary<long, List<object>> ProfessionLists = new Dictionary<long, List<object>>();
            public List<object> Groups = new List<object>();
        }
    }
}

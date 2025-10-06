using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using DataCondition = System.Func<System.Collections.Generic.IDictionary<string, object>, bool>;
using DataAction = System.Action<System.Collections.Generic.IDictionary<string, object>>;
using Data = System.Collections.Generic.IDictionary<string, object>;

namespace ATT
{
    public class Handler
    {
        /// <summary>
        /// A static method which always returns true, useful for conditions which should always handle the data
        /// </summary>
        /// <returns>true</returns>
        public static bool AlwaysHandle(Data _) => true;

        public ParseStage Stage { get; set; }

        public Dictionary<DataCondition, List<DataAction>> ConditionActions { get; set; }
            = new Dictionary<DataCondition, List<DataAction>>();

        public Dictionary<DataAction, List<Data>> ActionDatas { get; set; }
            = new Dictionary<DataAction, List<Data>>();

        public List<DataAction> ActionSequence { get; set; }
            = new List<DataAction>();

        public Handler(ParseStage stage)
        {
            Stage = stage;
        }

        public void AddConditionAction(DataCondition condition, DataAction action)
        {
            if (!ConditionActions.TryGetValue(condition, out var actions))
            {
                ConditionActions[condition] = actions = new List<DataAction>();
            }

            actions.Add(action);

            if (!ActionDatas.ContainsKey(action))
            {
                ActionDatas[action] = new List<Data>();
                ActionSequence.Add(action);
            }
        }

        internal void AddData(Data data)
        {
            foreach (KeyValuePair<DataCondition, List<DataAction>> conditionActions in ConditionActions)
            {
                if (conditionActions.Key(data))
                {
                    foreach (var action in conditionActions.Value)
                    {
                        ActionDatas[action].Add(data);
                    }
                }
            }
        }

        public void RunActions()
        {
            foreach (var act in ActionSequence)
            {
                Framework.Log($".. Running '{act.Method.Name}' on {ActionDatas[act].Count} groups");
                if (Debugger.IsAttached)
                {
                    ActionDatas[act].ForEach(act);
                }
                else
                {
                    ActionDatas[act].AsParallel().ForAll(act);
                }
            }
        }
    }
}

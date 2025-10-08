using System.Collections.Concurrent;
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

        public ConcurrentDictionary<DataCondition, ConcurrentQueue<DataAction>> ConditionActions { get; set; }
            = new ConcurrentDictionary<DataCondition, ConcurrentQueue<DataAction>>();

        public ConcurrentDictionary<DataAction, ConcurrentQueue<Data>> ActionDatas { get; set; }
            = new ConcurrentDictionary<DataAction, ConcurrentQueue<Data>>();

        public ConcurrentQueue<DataAction> ActionSequence { get; set; }
            = new ConcurrentQueue<DataAction>();

        public Handler(ParseStage stage)
        {
            Stage = stage;
        }

        public void AddConditionAction(DataCondition condition, DataAction action)
        {
            var actions = ConditionActions.GetOrAdd(condition, _ => new ConcurrentQueue<DataAction>());

            actions.Enqueue(action);

            if (!ActionDatas.ContainsKey(action) && ActionDatas.TryAdd(action, new ConcurrentQueue<Data>()))
            {
                ActionSequence.Enqueue(action);
            }
        }

        internal void AddData(Data data)
        {
            foreach (KeyValuePair<DataCondition, ConcurrentQueue<DataAction>> conditionActions in ConditionActions)
            {
                if (conditionActions.Key(data))
                {
                    foreach (var action in conditionActions.Value)
                    {
                        ActionDatas[action].Enqueue(data);
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
                    foreach (var data in ActionDatas[act])
                    {
                        act(data);
                    }
                }
                else
                {
                    // copy the set of concurrent actions into a new container for the parallel access to be allowed
                    var actionDatas = ActionDatas[act].ToArray();
                    actionDatas.AsParallel().ForAll(act);
                }
            }
        }
    }
}

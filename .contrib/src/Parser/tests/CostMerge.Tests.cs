using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using ATT.FieldTypes;

public static class CostMergeTests
{
	private static int failures;

	private static void AssertCost(Cost cost, string type, decimal id, long amount)
	{
		var actual = cost.GetCost(type, id);
		if (actual != amount)
		{
			throw new InvalidOperationException("Expected " + type + "/" + id +
				" x " + amount + "; actual amount: '" + actual + "'.");
		}
	}

	private static void AssertNoCost(Cost cost, string type, decimal id)
	{
		var actual = cost.GetCost(type, id);
		if (actual.HasValue)
		{
			throw new InvalidOperationException("Unexpected " + type + "/" + id +
				" x " + actual + " in the source cost.");
		}
	}

	private static Cost Combine(params Cost[] costs)
	{
		var parent = new Dictionary<string, object>();
		foreach (var cost in costs) Cost.Merge(parent, cost);
		return (Cost)parent["cost"];
	}

	private static void Run(string name, Action test)
	{
		try
		{
			test();
			Console.WriteLine("PASS: " + name);
		}
		catch (Exception exception)
		{
			failures++;
			Console.WriteLine("FAIL: " + name + ": " + exception.GetBaseException().Message);
		}
	}

	public static int Main()
	{
		Run("q10961 objective item costs", () =>
		{
			var cost = Combine(Cost.GetSimpleCost("i", 22790, 10), Cost.GetSimpleCost("i", 22786, 10));
			AssertCost(cost, "i", 22790, 10);
			AssertCost(cost, "i", 22786, 10);
		});
		Run("q10961 objective item costs in reverse order", () =>
		{
			var cost = Combine(Cost.GetSimpleCost("i", 22786, 10), Cost.GetSimpleCost("i", 22790, 10));
			AssertCost(cost, "i", 22790, 10);
			AssertCost(cost, "i", 22786, 10);
		});
		Run("Distinct currency costs", () =>
		{
			var cost = Combine(Cost.GetSimpleCost("c", 100, 3), Cost.GetSimpleCost("c", 200, 7));
			AssertCost(cost, "c", 100, 3);
			AssertCost(cost, "c", 200, 7);
		});
		Run("Item and currency costs with the same ID", () =>
		{
			var cost = Combine(Cost.GetSimpleCost("i", 100, 3), Cost.GetSimpleCost("c", 100, 7));
			AssertCost(cost, "i", 100, 3);
			AssertCost(cost, "c", 100, 7);
		});
		Run("Existing cost amount replacement", () =>
		{
			var cost = Combine(Cost.GetSimpleCost("i", 22790, 10), Cost.GetSimpleCost("i", 22790, 20));
			AssertCost(cost, "i", 22790, 20);
		});
		Run("Parent replacement leaves source cost unchanged", () =>
		{
			var source = Cost.GetSimpleCost("i", 22790, 10);
			var cost = Combine(source, Cost.GetSimpleCost("i", 22790, 20));
			AssertCost(cost, "i", 22790, 20);
			AssertCost(source, "i", 22790, 10);
		});
		Run("Parent additions leave every source cost type unchanged", () =>
		{
			var sourceParent = new Dictionary<string, object>();
			Cost.Merge(sourceParent, "i", 22790, 10);
			Cost.Merge(sourceParent, "c", 100, 3);
			var source = (Cost)sourceParent["cost"];
			var parent = new Dictionary<string, object>();
			Cost.Merge(parent, source);
			Cost.Merge(parent, "i", 22786, 10);
			Cost.Merge(parent, "c", 200, 7);
			AssertCost((Cost)parent["cost"], "i", 22786, 10);
			AssertCost((Cost)parent["cost"], "c", 200, 7);
			AssertCost(source, "i", 22790, 10);
			AssertCost(source, "c", 100, 3);
			AssertNoCost(source, "i", 22786);
			AssertNoCost(source, "c", 200);
		});
		Run("Parallel merges retain every item cost", () =>
		{
			const int rounds = 50;
			const int itemCount = 128;
			for (int round = 0; round < rounds; round++)
			{
				var parent = new Dictionary<string, object>();
				Parallel.For(0, itemCount, index =>
					Cost.Merge(parent, Cost.GetSimpleCost("i", 22790 + index, 10)));
				var cost = (Cost)parent["cost"];
				for (int index = 0; index < itemCount; index++)
				{
					AssertCost(cost, "i", 22790 + index, 10);
				}
			}
		});

		Console.WriteLine(failures == 0 ? "All 8 cost merge tests passed." :
			failures + " of 8 cost merge tests failed.");
		return failures == 0 ? 0 : 1;
	}
}

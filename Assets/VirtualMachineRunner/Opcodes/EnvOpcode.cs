﻿using Assets.Instances;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace Assets.VirtualMachineRunner
{
	public static partial class VMExecuter
	{
		public static (ExecutionResult, object) PUSHENV(VMScriptInstruction instruction)
		{
			var id = Conv<int>(Ctx.Stack.Pop());
			var currentContext = Ctx;

			// marks the beginning of the instances pushed. popenv will stop jumping when it reaches this
			// SUPER HACKY. there HAS to be a better way of doing this
			EnvironmentStack.Push(null);

			if (id < GMConstants.FIRST_INSTANCE_ID)
			{
				// asset id
				var instances = InstanceManager.Instance.FindByAssetId(id);

				// dont run anything if no instances
				if (instances.Count == 0)
				{
					if (instruction.JumpToEnd)
					{
						return (ExecutionResult.JumpedToEnd, null);
					}

					return (ExecutionResult.JumpedToLabel, instruction.IntData);
				}

				foreach (var instance in instances)
				{
					// TODO: how does return work??
					var newCtx = new VMScriptExecutionContext
					{
						Self = instance,
						ObjectDefinition = instance.Definition,
						Stack = new(currentContext.Stack),
						Locals = new(currentContext.Locals),
						ReturnValue = currentContext.ReturnValue,
						EventType = currentContext.EventType,
						EventIndex = currentContext.EventIndex,
					};

					EnvironmentStack.Push(newCtx);
				}
			}
			else
			{
				var instance = InstanceManager.Instance.FindByInstanceId(id);

				if (instance == null)
				{
					if (instruction.JumpToEnd)
					{
						return (ExecutionResult.JumpedToEnd, null);
					}

					return (ExecutionResult.JumpedToLabel, instruction.IntData);
				}

				// TODO: how does return work??
				var newCtx = new VMScriptExecutionContext
				{
					Self = instance,
					ObjectDefinition = instance.Definition,
					Stack = new(currentContext.Stack),
					Locals = new(currentContext.Locals),
					ReturnValue = currentContext.ReturnValue,
					EventType = currentContext.EventType,
					EventIndex = currentContext.EventIndex,
				};

				EnvironmentStack.Push(newCtx);
			}

			return (ExecutionResult.Success, null);
		}

		public static (ExecutionResult, object) POPENV(VMScriptInstruction instruction)
		{
			var currentInstance = EnvironmentStack.Pop();
			var nextInstance = Ctx;

			// no instances pushed
			if (currentInstance == null)
			{
				return (ExecutionResult.Success, null);
			}

			// no instances left
			if (nextInstance == null)
			{
				EnvironmentStack.Pop();
				return (ExecutionResult.Success, null);
			}

			// run block with next instance
			if (instruction.JumpToEnd)
			{
				return (ExecutionResult.JumpedToEnd, null);
			}

			return (ExecutionResult.JumpedToLabel, instruction.IntData);
		}
	}
}

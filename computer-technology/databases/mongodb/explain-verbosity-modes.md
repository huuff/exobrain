# Explain verbosity modes
These are passed as parameters to `explain()`:

* `queryPlanner` is the default one. It runs the query planner to choose an execution plan, but it does not execute it, so it might be the best if we don't want to overload our production cluster with a potentially slow query.
* `executionStats`: runs the query planner, chooses a plan and runs it. Then, it shows the results of the execution of the plan.
* `allPlansExecution`: As in `executionStats`, but it also returns information on rejected plans.

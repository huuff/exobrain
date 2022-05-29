# `Job`
A `Job` creates [[pod]]s that run until successful termination (exit code `0`). In contrast to regular pods, they won't get restarted. These are ideal for one-off tasks such as:
* Database migrations
* Backups
* Batch jobs

There are some features unique to jobs:
* It's not an ephemeral in-memory task, but one that survives cluster rstarts
* When it's completed, it's not deleted, but kept for tracking purposes. The [[pod]]s it creates are also not deleted, but they are kept for example to inspect container logs for the results of the execution.
* It might be performed multiple times, this is managed through the `.spec.completions` field.
* When multiple completions are specified, it can be configured to run several of these in parallel through the `.spec.parallelism` field

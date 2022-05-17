# `Job`
A `Job` creates [[pod]]s that run until successful termination (exit code `0`). In contrast to regular pods, they won't get restarted. These are ideal for one-off tasks such as:
* Database migrations
* Backups
* Batch jobs

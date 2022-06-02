---
tags: pattern
---

# Work Queue Job
A [[job]] with no `completions` but a `parallelism` greater than one. It's considered completed when at least one [[pod]] has exited successfully and all others have terminated. This requires that the pods are coordinated among themselves to communicate what each one is working on. 

This can be used to process a queue when an unknown number of elements are in it. The parallel pods will pick these one by one and, when one pod detects that the queue is empty, it exits successfully to indicate the completion of the job.

# Log collection strategy

## Direct logging
The simplest and dirties of all. There is no agent, logs are simply sent by the application to the remote logging service. Applications need to be aware of the logging service and be provided with appropriate credentials. If you want to change the logging strategy, you have to make changes on all applications

## Node agent
It's best when you control the worker nodes and want to abstract the logging away from applications. Each application logs to stdout and stderr and an agent running on each node (such as a [[daemon-set]]) intercepts and delivers them to the remote logging service.

## [[sidecar-container]]
It's best when you don't have control over the nodes: a sidecar is deployed on each pod, which is responsible of intercepting logging and delivering it to the remote service. This might have a higher overhead since an agent is run for each pod instead of for each node.

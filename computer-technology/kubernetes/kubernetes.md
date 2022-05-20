---
tags: index
---

# Kubernetes
Kubernetes is a container orchestration platform that allows managing a cluster of servers like a single logical unit on which to deploy workloads. This allows several powerful features like:

* Scaling: Services can be scaled to several replicas without worrying about the deployment of these. This can even be automated through an [[hpa]]
* Self-healing: Workloads that are down are automatically replaced by new ones.
* Load balancing: Load is automatically and transparently sent to the appropriate replicas without knowledge of how many there are or where they are.
* Service discovery: An internal DNS allows discovering services by name, transparently to their location.
* Automated rolling updates: Kubernetes ensures a new version of a service is correctly working before removing the old one.

The design of Kubernetes is highly decoupled and most of its functionality is managed through two parts:

* A resource is simply a YAML stored into the cluster, that defines some desired property of the cluster declaratively.
* A [[controller]] is a process that watches the API, compares the observed state to the desired one and takes action to reconcile both.

I've accummulated an absurd amount of notes on Kubernetes by this time, and this is only increasing. I'll index some of them here

## Workload resources
These are the main resources that allow defining the main functionality of Kubernetes.

* [[pod]]: The most basic unit of work in Kubernetes, composed of one or more pods
* [[replica-set]]: Manages several replicas of a [[pod]]
* [[deployment]]: Manages a [[replica-set]] and provides [[rolling-update]] features
* [[service]]: Provides service discovery and load balancing to the workload
* [[job]]: A workload that's run only once to completion
* [[cron-job]]: A [[job]] that's run periodically
* [[daemon-set]]: A workload that must run on every server in the cluster
* [[stateful-set]]: A workload that must ensure some properties that warrant correct functionality of a stateful workload.

## Processes
These are the processes that make Kubernetes

* [[kubelet]]: Runs the workloads and interacts with the container runtime
* [[kube-proxy]]: Routes packets to the [[pod]]s
* [[kube-controller-manager]]: Has most of the built-in [[controller]]s.
* [[kube-scheduler]]

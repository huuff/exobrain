---
tags: pattern
---

# Cloud bursting
A handy use of [[cluster-federation]]. Sometimes you might want to host your own on-premises Kubernetes cluster due to it being cheaper. But on-premises clusters are usually harder to scale than cloud clusters: you have to provision the individual machines yourself when you need to add them to the cluster.

*Cloud bursting* is a pattern that tries to merge both approaches to get the best out of both worlds: You manage your on-premises cluster, and use [[cluster-federation]] to add extra cloud clusters when there are spikes in traffic or utilization that require scaling. These clusters can also then be as easily removed.

This also has the benefit that you don't have to pay for extra hardware that's not used most of the time.

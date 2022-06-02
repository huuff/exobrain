# Headless service
An headless [[service]] is one with no associated [[cluster-ip]]. Instead it has every [[pod]] that backs it available directly under the DNS' SRV record. This is useful for stateful sets because usually each instance is not generally replaceable (e.g. only one might be the master that accepts writes).

To make a [[service]] headless, just add `.spec.clusterIP: None`

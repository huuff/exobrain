---
tags: definition
---

# Causal reverse
A [[time-travel-anomaly]]. Two writes are made in two different transactions, where one causes the other. The system (a [[distributed-system]]) orders them in *some* serial ordering (under [[serialization]]), but that serial order might place the transaction caused by the first one before the first one.

An example is a bank transaction between two different accounts of the same person that happens in two database transactions: account A has \$1000 while account B has 0\$. The owner transfers \$1000 from the first account to the second one, which results in two transactions:
* \$1000 are deducted from the first account
* Only if that transaction succeeds, \$1000 are added to the second account

A serializable system might order these two transactions in a different order (second before first), and during a small point in time between them, the owner appears to have a sum of \$2000 in both accounts.

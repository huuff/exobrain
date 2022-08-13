---
tags: index
---

# Phenomenon
==TODO: I think the term "Phenomenon" comes from the SQL standard, but since new anomalies have been expanded (coming from [[distributed-system]]s), the more general term is "anomaly")==

Data anomality integrities that appear when the [[isolation-level]] is relaxed. These are:

* "Official" (Present in the SQL-92 standard)
  * [[dirty-read]]
  * [[non-repeatable-read]]
  * [[phantom-read]]
* Unofficial
  * [[dirty-write]]
  * [[read-skew]]
  * [[write-skew]]
  * [[lost-update]]

Most of my notes on these come from [[high-performance-java-persistence]] (With diagrams shamelessly copied)

With [[distributed-system]]s, some different anomalies can be observed that are trivial to prevent in single-node systems, but are present in distributed systems even at the [[serializable]] isolation level these are the so-called [[time-travel-anomaly|time travel anomalies]]:
* [[immortal-write]]
* [[stale-read]]
* [[causal-reverse]]

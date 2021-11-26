# Concurrency control
To manage data conflicts when running concurrent transactions, two main strategies exist:

* Avoiding conflics (pessimistic): Acquiring and releasing exclusive locks so no conflicts can happen. (e.g. [[2pl]])
* Detecting conflicts (optimistic): Running all transactions and, if some conflict appear, rolling back or several of them (e.g. [[mvvc]])

Optimistic is currently preferred by most database systems to pessimistic, since pessimistic induces *contention* (Waiting times for locks to be released)

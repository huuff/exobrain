# CAP theorem
In a nutshell:
* [[cap-consistency]]
* Availability
* Partition tolerance

Choose 2

## Basic explanation
Since any distributed system can be subject to network partitions, you effectively have to choose between CP and AP
* CP: In order to remain consistent in the event of a network partition, a system might not be available
* AP: The system will remain available during a partition, but not be consistent. For example you might read stale data.

## More in-depth explanation
In the event of a network partition in a distributed system, suppose there are two different partitions and a write arrives at one of them, you have two choices:
* Accept the write, but the other partition won't be able to see it, at least until the partition heals ([[eventual-consistency]]). This means choosing AP
* Refuse the write, but then the system won't be available for writes. This means choosing CP.

This could also happen with reads, if there are some writes that didn't replicate before the partition happened.

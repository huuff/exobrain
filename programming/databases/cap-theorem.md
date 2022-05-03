# CAP theorem
In a nutshell:
* Consistency
* Availability
* Partition tolerance

Choose 2

## Basic explanation
Since any distributed system can be subject to network partitions, you effectively have to choose between CP and AP
* CP: In order to remain consistent in the event of a network partition, a system might not be available
* AP: The system will remain available during a partition, but not be consistent. For example you might read stale data.

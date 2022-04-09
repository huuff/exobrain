# Virtualization boom

## One application, one server
Before virtualization became commonplace in the enterprise, the main strategy for managing many applications was "One application, one server". So every single application would run in its own physical machine, this had some benefits:
* No contention for resources
* Applications where physically decoupled from each other
* Multiple departments didn't want to share their storage, or it was impossible because of some regulations

However, this made companies end up with too many servers, and, compounded with Moore's Law, many of those servers would run underutilizing their hardware resouces (it's estimated that most servers ran at 5% resource utilization)
* The energy costs of running so many servers were skyrocketing
* The optimization of hardware usage was sub-optimal
* The cost of ventilation and refrigeration of the servers was also getting higher
* Also, more physical space was needed to house all those servers

## Commodity virtualization
Virtualization was a game changer when "commodity virtualization" came along, that is, virtualization on x86 processors, that were so common, they became a commodity. The process of converting physical servers into virtual instances and putting them all together on a single virtualization-enabled server was called *consolidation*, and had some considerable benefits:
* Many more applications could fit into a single server, while preserving the advantages of "one application, one server" such as preventing contention through limiting resources to each machine, decoupling and isolation
* Planning for hardware was much easier, since machines could be moved between servers to optimize the usage of resources
* Virtual machines were easier to deploy, enabling better High-Availability practices such as replication and failover

I've not seen this term around, but I'm refering to this part of history as the virtualization boom, since the financial benefits of it for enterprises was so big that it seems to have greatly affected their IT development.

# Three Tier Architecture
A software architecture model that organizes an application into three tiers, where each one can use a different infrastructure to the other two. These tiers are

* Presentation tier: The user interface, a web presentation tier is usually developed using [[html]], [[css]] and [[javascript]]
* Application tier: The one that holds all the logic and business rules.
* Data tier: The actual storage used for the information, such as a database.

## Do not confuse with [[three-layer-architecture]]
Check out [[layer-vs-tier]]. Being **Three-Tiered** means that each of these tiers can be deployed independently.

### Benefits
* Decoupling the application tier from the data tier means that the application can accommodate multiple different sources of data, such as distributing storage between different databases. (==Is this a three-tier benefit? can't a three-layer architecture do the same?==)

==TODO: Write up on three-layer architecture, is there a difference other than three-tier architecture separates the layers also in physical deployment units?==

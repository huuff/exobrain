# Some common replica set configurations
* The majority of nodes in a primary data center, the rest in another. This is a good option if one data center is preferred and you want to make sure that the primary is there. However, to prevent a [[split-brain]], if the primary center fails, you won't be able to accept writes.
* Equal number of nodes in two data centers and a tie-breaker node somewhere else. This option is good if both data centers are equally preferred and is more resilient, but requires 3 different locations.

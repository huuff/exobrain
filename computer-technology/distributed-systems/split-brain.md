# Split-brain
A term that describes a dangerous situation in distributed systems: when communications between several clusters fail, each cluster might believe the rest of the nodes are down, and thus elect a leader within themselves, which would make them accept operations independently and thus break the consistency of the data across all clusters.

## How MongoDB solves it
Maybe how everyone solves it? In MongoDB, if a majority of nodes are unreacheable, then no one can become a leader and thus no one accepts writes. Since a majority is necessary for a consensus, it's impossible to have consensus on several different leaders.

# Randomly distributed shard key
A [[shard-key]] that is randomly distributed (such as a random number, an UUID or username). Any shard key can be made randomly distributed by using a [[hashed-shard-key]]

### Pros
* It should evenly hit all clusters, so they would be naturally balanced and migrations would be less frequent

### Cons
* MongoDB is not very efficient at randomly accessing data beyond RAM capacity
* I think this would turn all requests into [[scatter-gather]]?

# Scatter-gather query
A query that does not use the [[shard-key]], or uses it in an inefficient manner so that the data could potentially be in any node and thus it has to be sent to every node (the *scatter*) and the results must then be collected into a response (the *gather*)

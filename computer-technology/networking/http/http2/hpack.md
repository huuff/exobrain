# HPACK
An algorithm to compress headers used in HTTP/2. This was created to avoid `gzip` since it was vulnerable to the [[vulnerabilities/crime|CRIME vulnerability]].

I don't want to spend time looking at simplified explanations of it and I really don't want to loook into its specification, so I'll summarize the most important information I know about it: headers are represented as indexes on a table, and only these indexes are sent over the wire. Some very usual headers are stored in a table all clients and server have, and some others just get sent for the first time as-is, with the indication to save in a table to reuse its index in the future requests.

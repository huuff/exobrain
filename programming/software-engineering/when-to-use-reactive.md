# When to use reactive programming
It's useful when there's significant I/O-bound tasks intermixed with CPU-bound tasks. So it's especially useful for applications that do a lot of calls to another APIs and process the responses/requests.

On the other hand, there is a minimal gain for an application that just interfaces the database: there's almost no CPU-bound tasks and the performance is likely to be the same as a non-reactive solution.

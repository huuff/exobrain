# Comparisons of routing by layer
Some benefits of each one are:
* Layer 4
  * Probably faster than layer 7 since it doesn't have to inspect HTTP packages? I don't know
  * Probably allows more higher-level protocols than routing specific to some layer 7 protocol.
* Layer 7
  * More flexible for its own protocol. A layer 7 http router can route based on hostname or URL path, which a layer 4 can't do.
  * It can load-balance better, a Layer 4 router routes at the connection level instead of at the request level. If too many requests are launched in the same connection, all of these will hit the same node in a layer-4 router.
  * It can support [[session-affinity]], though this is considered an antipattern.

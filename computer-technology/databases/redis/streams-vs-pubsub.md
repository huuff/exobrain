---
tags: comparison
---

# Streams vs Publish-Suscribe
* Streams use a hash-like data structure, while pub-sub just allows any string whose structure must be managed at the application layer.
* Streams have both blocking and non-blocking families of commands, while publishing is always non-blocking and suscribing is always blocking.
* Pub-sub channels are always ephemeral and nothing is stored: only listening clients get the message. Streams, on the other hand, store messages (as long as they don't get deleted), and a late client can get all previous stored messages.

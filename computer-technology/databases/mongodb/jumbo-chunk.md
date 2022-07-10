---
tags: definition
---

# Jumbo Chunk
A chuck that is larger than the maximum chunk size set in `config.settings`. The balancer will not be able to split or move it. This can happen when your shard key makes your writes to be very unevenly distributed.

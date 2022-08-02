---
tags: definition
---

# TILT
A special mode of functioning for Redis when it detects a clock skew. To quote `antirez` (Redis' creator)

> Just to clarify TILT is a special mode that is used when Sentinel detects its internal state is corrupted in two ways: either the system clock jumped in the past, so a Sentinel can no longer trust its *internal* state, or the clock appears to have jumped in the future, that means, the sentinel process for some reason was blocked for a long time. In both cases such a sentinel will enter TILT mode so it will stop acting for some time, until the state is believed to be already reliable. TILT is basically not part of the Sentinel protocol, but just a programming trick to make a system more reliable in presence of strange behaviors from the operating system. 

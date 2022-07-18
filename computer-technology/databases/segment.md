---
tags: definition
---

# Segment
In a [[log-structured-storage-engine]], a segment contains all writes made to the database during a period of time. Segments are written to until they become full, at that point, a new one is created and data begins to be written to that one.


---
tags: tip
---

# When designing a REST API, if the response is just an array of things, wrap it in another object
This helps with forward compatibility. A response that is just an array can't be extended in the future by adding extra top-level fields, while if you wrap it in an object, you can.

Apparently there are also some security considerations too, check [this stackoverflow thread](https://softwareengineering.stackexchange.com/questions/286293/whats-the-best-way-to-return-an-array-as-a-response-in-a-restful-api)

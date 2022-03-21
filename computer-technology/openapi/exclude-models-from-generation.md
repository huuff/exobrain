---
tags: how-to
---

# Exclude models from generation
Sometimes you just want to use your own models. You can exclude models from generation by adding them to import mappings as in:

```
--import-mappings Pet=my.models.MyPet,Order=my.models.MyOrdr
```

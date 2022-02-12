---
tags: tips
---

# Dependency insight report
You can get a dependency insight report by running the command

```
gradle -q dependencyInsight --configuration <configuration name> --dependency <<dependency name>>
```

This report specifies what dependency conflicts where encountered, how they were resolved and specifically which configurations or options made the decision to resolve it so.

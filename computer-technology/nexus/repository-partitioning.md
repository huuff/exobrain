---
tags: how-to
---

# How to partition repositories
Actually I'm not sure whether this is actually repository partitioning, but the only (really lame) process I found is:

1. Create a "Content Selector", you'll have to use a shitty undocumented DSL (CSEL, "Content Selector Expression Language") to specify which content this partition will access. Currently I have this rule

```CSEL
format == "maven2" and path =^ "org/example"
```

Which means, a maven artifact whose path starts with `org/example`. 

2. Create a privilege, that's associated to that content selector

3. Create a role, that's associated to that privilege!!

4. Create a user, that's associated to that role!!!! You're also forced to add an e-mail.

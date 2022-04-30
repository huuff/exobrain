---
tags: tip
---

# Remove any [[suid]] and [[sgid]] permissions
These can be used for privilege escalation, which can be especially dangerous given that by default [[user-id-space-is-shared]].

This can be easily accomplished at build time with:

```dockerfile
RUN for i in $(find / -tyè f \( -perm /u=s -o -perm /g=s \)); \
  do chmod ug-s $i; done
```

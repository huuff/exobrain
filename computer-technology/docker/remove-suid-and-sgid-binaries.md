---
tags: tip
---

# Remove any [[suid-and-sgid]] permissions
These can be used for privilege escalation, which can be especially dangerous given that by default [[user-id-space-is-shared]].

This can be easily accomplished at build time with:

```dockerfile
RUN for i in $(find / -tyè f \( -perm /u=s -o -perm /g=s \)); \
  do chmod ug-s $i; done
```

## Is there a better alternative?
I've seen this suggested in some book, but there's always the `--no-new-privileges` flag to `docker run`, which:
* Is easier to do, doesn't require to edit the image
* Doesn't create a new layer

I don't know if there's any specific benefit to removing the permissions directly.

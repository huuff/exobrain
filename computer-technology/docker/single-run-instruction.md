---
tags: best-practice
---

# Combine many instructions in a single `RUN`
As you probably know, every `RUN` instruction in a Dockerfile creates a new layer, which adds storage overhead to the image. The best way to avoid it is to chain many commands in a single `RUN` instruction using `&&` (and `\ ` for readability) so only one layer is created

### Example
```docker
RUN apt-get -y update \
  && apt-get -y install php \
  && apt-get clean
```

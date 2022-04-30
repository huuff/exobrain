---
tags: tip, best-practice
---

# Run the `USER` instruction as soon as possible
Since [[root-default]] and [[user-id-space-is-shared]], you might want to run the `USER` instruction to prevent your container from running as root.

This, however, might not be enough since any [[build-instruction|build instruction]] run as root might open the door for vulnerabilities you also might want to run it as soon as possible.

---
tags: comparison
---

# Gatekeeper vs Kyverno
These two were the main replacements suggested after deprecating [[psp]]. To me, Kyverno is the winner:

* It resembles pod security policies a bit more, so it's the easiest path of replacement.
* Gatekeeper is [[opa]]-compliant, which means that it must use the specialized rego language. I hate encoding logic into YAML, JSON or XML, but even more so would I hate to learn a weird language such as rego only for defining policies.

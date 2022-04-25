---
tags: caveat
---

# Provide a `--values` flag when upgrading a [[chart]]
(True as of Helm 3)

Helm always insalls any charts with the values provided from the CLI. You might think that since you provided some configuration at installation, that same configuration will be used when upgrading BUT NO. You still have to provide the save configuration when running `helm upgrade` or else you'll find that all of your configuration values disappeared when you update.

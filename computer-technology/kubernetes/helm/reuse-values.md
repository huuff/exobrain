---
tags: caveat
---

# Upgrade with `--reuse-values`
(True as of Helm 3)

Helm always insalls any charts with the values provided from the CLI. You might think that since you provided some configuration at installation, that same configuration will be used when upgrading BUT NO. You still have to provide the save configuration when running `helm upgrade` or else you'll find that all of your configuration values disappeared when you update.

A handy shortcut to do this is to provide the `--reuse-values` to `helm upgrade`, so the upgrade uses the same values as the installation.

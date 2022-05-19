---
tags: pattern
---

# Feature gate
It's a way to bridge the development of new features in source control to the deployment of these features in production. It consists of developing new features entirely behind a feature flag

```c
if (featureFlags.someFeature) {
  // implementation of the feature
}
```

## Benefits
* Allows committing code related to a feature to the production branch before it's ready. This enables feature development to stay more closely associated to the production code, and thus avoid huge merge conflicts
* Enabling a feature involves just activating a flag, making it very clear what changed in the production environment, and likewise rolling back a feature is just disabling it, without the need of a binary rollback to an older version.

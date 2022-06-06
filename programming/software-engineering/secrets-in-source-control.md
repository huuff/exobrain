---
tags: antipattern
---

# Don't put secrets in source control
* By doing so, you align these to the access control of the source control. It's likely that not every developer with access to your source code needs to know the credentials of the production database
* It's especially hard to remove it later
* You'll couple the secret to the source, what if you have several deployments? (`staging`, `prod`...) your secret won't be parameterizable to different environments.

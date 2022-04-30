---
tags: best-practice
---

# Choosing a good versioning scheme
The best practice is to provide two kinds of tags:
* One that is static, pinning at the revision level, such as `app:1.9.2`. This way users can be very explicit about the version they want (though a [[digest]] might be better at this). These tags should only be changed for security updates that have no compatibility changes.
* One that is moving, to provide always the latest version that is compatible, such as `app:1.9`. Since the last version (at least in [[semver]]) should not affect compatibility, but provides the latest patches and security updates, you might always want to be at the latest one.

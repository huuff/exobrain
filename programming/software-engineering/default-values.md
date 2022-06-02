---
tags: comparison
---

# Default values
The best recommendation is to avoid them whenever possible, unless you can be really sure your default value is the best possible one. Also, changing a default value should imply a bump to a major version since it can transparently break many clients.

## Pros
* They make it easy to instantiate some object or resource, without having to provide every single dependency
* They allow having sensible defaults, to support the *convention over configuration* paradigm

## Cons
* They might be really hard to change, all the users of the default value will be surprised when they change, and this has many implications:
  * Default values have many users, since they can be used both consciously as unconsciously
  * Default values will likely need changing, since it's pretty difficult to get them right the first time.

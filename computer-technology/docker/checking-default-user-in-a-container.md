---
tags: how-to
---

# Checking what the default user in a container is
It's kind of problematic that [[root-default|root is the default user]]. It's even more so since the ways of checking what is the default user for the container are unergonomic. A naive way would be:

```sh
docker inspect --format "{{ .Config.User }}" «image»
```

However, this wouldn't catch the user change if the entrypoint script changed it. It might be better to do:

```sh
docker container run --rm --entrypoint "" «image» id
```

==Why is this better? The problem is still there since the entrypoint is removed, and removing the entrypoint is necessary for ensuring the container runs that exact command==

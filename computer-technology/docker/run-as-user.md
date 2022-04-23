---
tags: how-to, tip
---

# Run a container as a specific user
To circumvent the [[root-default]] issue, you can specify an user as which to run the container. The quirk to this is that this user must exist inside the container, and every distribution comes with its own set of predefined users, also the image builder might have defined any others on its own. You can check which users you can use by running

```sh
docker run --rm «image» awk -F '$0=$1' /etc/passwd
```

Once you've decided which user you want to run the container as, you can provide the `-u` or `--user` flag to do it:

```sh
docker run --rm -u nobody «image» id
```

## Tips on its usage
You can default to the `nobody` user, since a lot of linux distributions provide it for running unprivileged commands. An even better option would be to provide an UID. Using an UID, **the provided user doesn't have to exist inside the contaier**, so it is more generally applicable. For example:

`docker run -u 1000 --rm «image»`

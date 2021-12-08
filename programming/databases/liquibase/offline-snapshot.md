# Offline snapshot
You can simulate a database with an [[snapshot]] by using an url like:

```
offline:<database type>?snapshot=<snapshot file>
```

This could be useful to compare a running database with an older, saved snapshot.

## Example

```
offline:mysql?snapshot=mySnapshot.json
```

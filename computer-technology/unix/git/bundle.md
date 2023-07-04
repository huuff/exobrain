# `git bundle`
A (kind of?) useful command: it creates a bundle with your whole repository, which you can then email to someone or even clone a project directly from it:

```sh
git bundle create repo.bundle HEAD master
```

Then you can clone it with
```sh
git clone repo.bundle
```

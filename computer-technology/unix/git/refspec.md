# `refspec`
`refspec`s are a way of specifying how git should map remote references (such as branches) to local ones. The syntax is:

```
«remote ref source»:«local ref destination»
```

Also, the refspec can be prefixed with a `+` which means to pull a remote reference even though it might not be applicable in a [[git/fast-forward]].

`refspec`s can be differentiated by whether they're for fetching or pushing from/to the remote:
* In the `.git/config` file, the fetching refspec is under the `fetch = ` property
* The pushing refspec is under the `push =` property.

### Example 1
When you initially add a remote through `git remote add origin «url»`, you'll find the following default reference inside your `.git/config`:

```
[remote "origin"]
  url = «url»
  fetch = +refs/heads/*:refs/remotes/origin/*
```

This instructs git to pull all heads (branches) into the `refs/remotes/origin` reference (which is an actual directory inside your `.git` directory). Also, because of the prefix `+`, this means it will be pulled even if it's not possible to fast-forward it.

When using the local reference, the `refs/remotes` can actually be omitted, since git understands the spec if specifying only the remote, so the following are all equivalent:

```sh
git log origin/master
git log remotes/origin/master
git log refs/remotes/origin/master
```

### Example 2
You could also for example specify to only fetch the `master` and `develop` branches with a configuration like the following:

```
[remote "origin"]
  url = «url»
  fetch = +refs/heads/master:refs/remotes/origin/master
  fetch = +refs/head/develop:refs/remotes/origin/develop
```

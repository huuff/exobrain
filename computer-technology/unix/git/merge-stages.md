# Merge Stages
During a [[git/merge]], git stores all three versions of your files (at least, during a [[three-way-merge]]) in "stages":

* Stage 1 is the common ancestor of both branches
* Stage 2 is your version ([[git/head]]) (`ours`)
* Stage 3 is the other branch's version (`theirs`)

You can get the hashes of all stages of objects with `git ls-files -u`. You can also get a shortcut to these with the `:«stage»:«file»»` reference, for example:

```sh
git show :1:hello.rb
```

To get the common ancestor of `hello.rb`

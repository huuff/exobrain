# Pull Request Ref
Github advertises [[pull-request|pull requests]] as sort of pseudo-branches that aren't pulled by default when fetched, but that you can list by running `git ls-remote «repository url»`. These are exposed under the reference of `origin/refs/pull/«pr id»/head`.

### Merging them
You can fetch them by doing `git fetch origin refs/pull/«pr id»/head`, which will add a local reference to it in the `FETCH_HEAD` ref. You can then merge into your branch with `git merge FETCH_HEAD`, though the merge commit looks a bit strange.

### Automatically fetching all pr refs
Add the following to your `.git/config` file, under the `remote` declaration for your [[git/remote]] (usually `[remote "origin"]`):

```
fetch = +refs/pull/*/head:/refs/remotes/«remote name»/pr/*
```

This instructs git to create a local tracking branch `pr/«pr id»` for every pull request in the remote.

---
tags: tip
---

# Make a changelog with `git shortlog`
This is a nice command that summarizes all changes made to a repository grouped by author in a format that's very suitable to provide a high-level summary or overview of releases/versions.

### Example
This will show a quick summary of changes I did to this repository in June 2023:

```sh
git shortlog --since "2023-06-01"
```

Output:

```
Haf (22):
      french note
      note on my current suffering
      small german note
      Merge branch 'master' of github.com:huuff/exobrain
      small german note
      git note
      german note
      test file
      added a 2
      removed test file
      french note
      git note
      small git note
      explaining what git pull does
      git note
      note on rebasing
      a git caveat
      git notes
      note on git-shell
      branch difference in git
      git notes
      note on the BAGS acronym for french adjective order
```

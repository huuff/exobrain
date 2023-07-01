---
tags: how-to
---

# Change an E-Mail address in all history
Perhaps you changed your e-mail, or forgot to set it or whatver. Using this script (through [[filter-branch]]) you can amend that error:

```sh
git filter-branch --commit-filter '
if [ "$GIT_AUTHOR_EMAIL" = "«email you want to delete»"];
then
  GIT_AUTHOR_NAME="«new name»"
  GIT_AUTHOR_EMAIL="«new email»"
  git commit-tree "$@"
else
  git commit-tree "$@"
fi
' HEAD
```

# `rerere` (Reuse Recorded Resolution)
`rerere` is a git configuration that allows it to remember the decision you made for resolving a conflict in a file and reuse it in case the same conflict ever arises again. You can enable it by using:

```sh
git config rerere.enabled true
```

This is useful there are some annoying recurrent conflicts that arise frequently when merging in your repository (maybe in files modified by automated tools? changes in whitespace?)

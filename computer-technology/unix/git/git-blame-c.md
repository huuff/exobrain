# `git blame -C`
Git doesn't explicitly keep track of lines moved or copied across your project, but tries to infer them from the commit information. This flag to `git blame` also gives information about any line moves/copies that git is able to infer (such as wherever the current highlighted line comes from)

# Partial staging
You can stage only [[git/hunk|hunks]] of a file with `git add -p «file»`. This will show you an interactive interface that will iterate through all hunks in your working directory, allowing you to perform different operations on them such as:

* Staging them
* Removing them
* Splitting a hunk into several smaller hunks
* Editing them. (But consider that [[editing-hunks-is-hard]])

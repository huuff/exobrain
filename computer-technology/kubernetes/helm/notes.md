# `NOTES.txt`
If a [[chart]] has a `templates/NOTES.txt` file, its contents will be printed to screen when running `helm install` and `helm status`. The content of `NOTES.txt` is a template itself and can be interpolated like any other template.

It's common to put usage notes and next steps in the `NOTES.txt` file.

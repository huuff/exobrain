# Filters
Git can apply filters to files as they are checked out/in (called respectively *smudge* and *clean*), which can be configured through [[gitattributes]]

### Example
The following filter applies the `indent` program to your C files as they are checked-in and keeps them intact as they are checked out. This goes into your `.gitattributes` file:

```
*.c filter=indent
```

Then you configure the *clean* and *smudge* parts of the filter:

```sh
git config --global filter.indent.clean indent
git config --global filter.indent.smudge cat # Acts like a noop (leaves the file as-is)
```

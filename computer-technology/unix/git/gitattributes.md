# `.gitattributes`
This file contains rules that apply to specific files. You can use it for:

* Specifying specific merge strategies for single files
* Specifying how to diff non-text files
* Automatically passing filters on content as you check it out/in

### `binary` attribute
Specifies that files matching the pattern are binary, and thus can't be treated like normal text files. For example, if you have certain database files (such as `file.db`), you can instruct git to this by adding:

```
*.db binary
```

This way you can avoid git dealing with CRLF issues or showing you huge diffs.

### Diffing binary files
You can tell git how to convert a binary file to text so it can be effectively diffed with:

```
«file» diff=«filter»
```

And then you can configure that filter with

```
git config diff.«filter».textconv «command»


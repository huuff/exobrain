---
tags: how-to
---

# Diffing MS Office Word Files
It would be nice to version control your MS word files but this becomes very hard on git, since they are considered binary files and the output of the `diff` command (among others) isn't very useful. You can solve it by intelligently using [[gitattributes]].

1. First, you'll set a filter for word files in `.gitattributes`

```
.docx diff=word
```

2. Then, you'll create a script that converts a word document into text using `doc2txt.pl`:

```sh
#!/bin/bash
doc2txt.pl $1 -
```

3. Finally, you configure git to apply this command for the filter:

```sh
git config diff.word.textconv «script path»
```


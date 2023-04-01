---
tags: tip
---

# Associative arrays in bash through variable indirection
The powers of [[shell/variable-indirection]] can be used to mimic [[zsh]]'s associative arrays. Suppose for example that you ask the user for the name of a color and want to dynamically set it then. In zsh you'd do:

```zsh
declare -A color
color[red]=$'\e[31m]'
color[blue]=$'\e[34m]'
# ... more color declarations omitted
# then, you can ask the user for a color and store it in $user_color
# so when you want to substitute, it's just:
echo "$color[user_color]Output"
```

In bash, you can do the same with variable indirection and [[shell/eval]], like:

```bash
color_red=$'\e[31m]'
color_blue=$'\e[34m]'
# ... more color declarations omitted
# then, you can ask the user for a color and store it in $user_color
# so when you want to substitute, it's just:
eval "echo \${color_$user_color}Output"
```

# Recovering an unsaved file
If a crash happens (something that's happening frequently to me lately), use `vim -r` to find all previously open unsaved files. Then, copy the filename and use `:recover <filename>` inside `vim` to recover it.

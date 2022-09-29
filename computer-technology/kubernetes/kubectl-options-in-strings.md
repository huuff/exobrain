---
tags: caveat
---

# Put whole `kubectl` options in a string
Or else stuff fails weirdly. e.g.:

Do not say: `k -n buoy get secret «secret» -o jsonpath=" { .data.password }" | base64 -d`
Say: `kubectl -n buoy get secret «secret» -o 'jsonpath={ .data.password }' | base64 -d`

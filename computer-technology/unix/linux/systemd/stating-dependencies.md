---
tags: how-to
---

# Stating dependencies in `systemd`
I always forget the meaning of each of these:

(I will explain it in one direction and it should be obvious how it works in the other)

* `Before`/`After`: Only specifies ordering in units
* `Wants`/`WantedBy`: If the unit is started, the referenced units will also get started. But if they fail, this unit will proceed equally.
* `Requires`/`RequiredBy`: Like `Wants` but also this unit is stopped if the required units are explicitly stopped. Besides, if using `After`, this unit won't start if the required unit fails to start.
* `BindsTo`: The strongest type, I think. The unit gets stopped if the other goes inactive for any reason (not expliticly stopped). When using `After`, only when the other unit is active will this unit be active. This also means that this unit will be inactive if the other unit fails a precondition check (such as `ConditionPathExists`)

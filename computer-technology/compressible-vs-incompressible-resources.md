# Compressible vs incompressible resources
System resources cab labeled as compressible vs incompressible:

* compressible resources can be throttled, such as CPU shares
* incompressible resources can not be throttled, such as memory

Such a distinction is important for example for [[virtualization]] limits. When compressible resources are running low (e.g. CPU shares) then a lower amount of them can just be assigned to each machine. For incompressible resources (such as memory), however, the only solution might be to kill the machine (maybe [[memory-compression]] and [[ballooning]] can help with this)

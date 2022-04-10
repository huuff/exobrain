# Performance capabilities
There are some common performance capabilities offered by virtualization products to better manage the usage of physical resources. These are:
* *Shares*: They are a relative measure of how much of a resource a VM is able to use (I think this is for CPU only?). A VM with twice the shares of another will be scheduled twice as frequently
* *Reservations*: Minimum amounts of resources that should be available to the VM at any time.
* *Limits*: Maximum of a resource over which a VM won't be able to take any more. Seldom used, since VMs are already created with a specific amount of a resource and limits are reduntant to it.

# Snapshot
Snapshots are a capture of a VM's state at a particular point in time. When a snapshot of a VM is made, you can always roll back to it at any point in the future.

## When to use them
They are especially useful to provide some safety when doing small, potentially dangerous changes to the VM. For example, you can make a snapshot just before the update of the guest OS just in case the update causes some issues.

They are not suitable as back-up solutions.

## How they work
When a snapshot is made, writes to the virtual machine's state are no longer made to its disk, instead, the state of its disk is freezed in time and any further changes are made to a *delta disk* or *child disk* which only contains any changes from the time of the snapshot. These changes are accummulated until they are either *consolidated* into the disk or the snapshot is deleted and they are discarded.

## Caveats
When writing to a virtual machine that has snapshots, every write that touches some of the original data must be copied to the *delta disk*, also, reading requires checking the *delta disk* and, if the data is not found there, then the original disk.

Therefore, there's some write and read performance overhead, and snapshots also do take space, this is compounded by every extra snapshot you take, so they are intended to be short-lived and quickly consolidated or deleted when their purpose is over.

# Reclaim policy
There are three available reclaim policies for [[persistent-volume]]s that determine what happens when a [[persistent-volume-claim]] is deleted:
* `Retain`: The volume will have to be reclaimed manually.
* `Delete`: The associated storage asset it's just permanently removed.
* `Recycle`: Its contents are erased and it's available to use again.

[[volume-provisioning|Dynamically provisioned volumes]] are always deleted.

# Volume Snapshot
A relatively newer Kubernetes feature (as of writing): You can create a snapshot from a [[persistent-volume]] and then recreate the volume from it. It's defined through [[crd]]s and a snapshot controller, and works by injecting a [[sidecar-container]] onto [[pod]]s.

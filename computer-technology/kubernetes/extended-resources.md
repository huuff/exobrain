# Extended resources
This is the way for adding some specialized resources to kubernetes nodes and demanding them from [[pod]]s. For example, if you're managing a machine learning operation in your cluster you might need to have some node with NVIDIA GPUs, the canonical way is to [[taints-and-tolerations|taint]] the nodes that possess such resources as

`Key: nvidia.com/gpu, Effect: NoSchedule`

This means you can use the `ExtendedResourceToleration` [[admission-controller]] which will automatically add the necessary tolerations to the pods requesting these resources.

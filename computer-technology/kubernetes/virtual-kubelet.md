# Virtual kubelet
A CNCF project that allows pretending a kubernetes node is available, but actually is a interface to another service that allows running containers as if they were in a kubernetes node.

Azure web services use it to provide [[cloud-bursting]]: On your [[aks]] instance, if the load gets too high you can get a virtual node with infinite resources to schedule pods, which actually run on [[aci]]

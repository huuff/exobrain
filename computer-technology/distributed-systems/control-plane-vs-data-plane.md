# Control Plane vs Data Plane
* The Control Plane is the one where the cluster management traffic is located
* The Data Plane is where application traffic is located

It's important to segregate the two, so for example, connectivity problems in the Data Plane don't preclude managing the system through the Control Plane to resolve the problem.

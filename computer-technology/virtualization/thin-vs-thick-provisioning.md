# Thin vs think provisioning
* Thick provisioning when creating a virtual machine disk means reserving all of its space in a go, and having it available for the machine
* Thin provisioning means reserving only the minimum amount of space required for the VM to function, and growing it as needed

Thin provisioning enables *storage overcommitment* and usually the overhead of it is almost negligible.

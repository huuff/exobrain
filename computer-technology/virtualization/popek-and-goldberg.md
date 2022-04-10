# Popek and Goldberg
"Formal Requirements for Virtualizable Third Generation Architectures" (Gerald J. Popek and Robert P. Goldberg, 1974) seems like the original paper that introduced a formal framework for defining what constitutes a virtual machine manager (VMM). A high overview of these requirements:

* **Fidelity**: The environment inside the VM is essentially identical to the original (hardware) one.
* **Isolation or Safety**: The VMM must have complete control of the system resources.
* **Performance**: There should be little or no difference between the VM and a physical equivalent.

Most VMM meet the first two criteria, those that meet the final one are called *efficient VMMs*

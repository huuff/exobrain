# Non-virtualizable instructions (or *sensitive* instructions)
This is the set of instructions that act differently depending on which [[protection-ring]] they are run, or on whether they affect system resources.

If all of these instructions were privileged, and thus had to be run on ring 0, it'd be much easier to emulate them through [[trap-and-emulate]]. There are some approaches to virtualizing them:

* [[binary-translation]]
* [[paravirtualization]]
* [[hardware-virtualization]]

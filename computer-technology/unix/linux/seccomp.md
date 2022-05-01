# `seccomp` (Secure Computing Mode)
In its original form, it enables a process to make a one-way transition to a mode where it can only make the system calls `exit()`, `sigreturn()`, `read()` and `write()` to already-open file descriptors.

A newer version called `seccomp-bpf` leverages [[bpf]] to allow you to create a profile where you can explicitly define which system calls a process is able to make.

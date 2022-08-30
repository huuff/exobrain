# Capability
This is a new development in the Linux kernel, rather than having an all-powerful `root` account, the superuser privileges are represented by a collection of *capabilities* that allow specific actions on the system, such as

* `CAP_NET_RAW`: Open a raw network socket
* `CAP_SYS_ADMIN`: Basically superuser privileges

## Process capabilities
Not only an user, but also a process can have its own capabilities. You can check which ones a process has by doing `getpcaps «pid»`

You can also add capabilities, for example to add `CAP_NET_RAW` to a process you can do:

```bash
setcap 'cap net_raw+p' «executable»
```

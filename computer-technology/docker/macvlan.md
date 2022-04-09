# MACVLAN Networking Driver
The built-in MACVLAN networking driver makes containers first-class citizens on the existing physical networks by giving each one its own MAC and IP addresses.

It was made to better support communicating containerized applications with non-containerized applications on the same network.

The main downside (or complexity) is that it requires the host NIC to be in [[promiscuous-mode]], which might not always be possible.

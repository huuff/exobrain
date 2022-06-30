# Martian Packet
An "impossible" packet that arrives at a network interface with an IP address that doesn't belong to the network it comes from. For example, a packet that's spoofed to have the source address of `127.0.0.1`.

[[linux]] filters these packets by default. This protection can be disabled, but that, however, can be very dangerous. It's not uncommon for applications to consider local traffic more trustworthy than external traffic, so it has less stringent access control rules. This happens for example in local connections to databases.

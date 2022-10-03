# `Connection`
The `Connection` header is supposed to only be applicable on a hop-by-hop basis. That is, that proxies are supposed to remove it before forwarding and act on it immediately. Other headers can be listed in the `Connection` value, and this means that these headers only apply to this current hop.

`Connection` can be troublesome for proxies in older versions of the protocol (0.9? 1.0?) that don't understand it, and thus blindly forward it. This means that a client might think that they have applied the header, while it was ignored.

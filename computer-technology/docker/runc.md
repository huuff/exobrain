# `runc`
`runc` is the reference [[oci]] implementation for the container runtime spec. It's a small wrapper around `libcontainer` and usually said to be running on "the OCI layer".

Its sole purpose in life is to create containers, it's the only tool necessary for building and running OCI container, but it's very low level.

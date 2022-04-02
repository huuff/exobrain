# `containerd`
`containerd` sits in between the Docker daemon and `runc`. Originally it was stripped from the Docker daemon on an effort to provide a clean separation of concerns, and it was targeted to be only in charge of the container lifecycle, so it would be only responsible for commands like `start`, `stop`, [[pause]] and `rm`.

However, with time more responsibilities have been added to `containerd` (in part, to please some needs of [[kubernetes]]). Actions such as pushing and pulling images are now also responsibilities of `containerd`

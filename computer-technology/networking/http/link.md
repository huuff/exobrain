# `Link`
The `Link` header is used to reference other resources. 

When using the `rel=preload` directive, the client is supposed to fetch the referenced resource directly, even if it's not needed yet. Some web servers also read these headers to provide the referenced resources through [[http2/server-push]]. This behavior could be disabled by adding the `nopush` directive to it.

There's also the `as=` attribute, (e.g. `as=stylesheet`) which serves to communicate the role of the resource in the transaction, which may be translated into setting priority parameters during the connection.

This header is also available as an HTML tag with similar semantics.

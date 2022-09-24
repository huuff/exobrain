# Preload link vs Server push
*This is no longer relevant with support for push being dropped*

* Browsers hide any pushed resources that are not actually needed, which might make it hard to debug situations involving them
* A `preload` [[http/link]] informs the client to request another resource, and the client might decide whether to do so or not if it has the resource cached, which avoids wasting bandwidth.
* The whole transaction saves one round-trip with server push, as the client doesn't need to request the resource. However, this extra round-trip might be amortized if using the `Link` header with the [[103-early-hints]] status code.
* Another disadvantage of the `Link` header is that you can no longer have the backend application deciding when to provide these resources... but this is also solved by using the [[103-early-hints]] response.

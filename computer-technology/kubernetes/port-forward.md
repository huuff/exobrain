# `port-forward`
A feature I've found very useful. Allows you to open a direct connection to a [[pod]] or [[service]] from the local machine, just do:

```sh
kubectl port-forward «pod name» «host port»:«pod port»
```

And you can access it on `localhost:«host port»`. If you want to use it with services you have to use

```sh
kubectl port-forward svc/«service name» «host port»:«pod port»
```

Note that this is not load balanced, and all requests will go to the same pod.

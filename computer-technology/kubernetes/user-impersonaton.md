# User impersonation
In order to test [[rbac]] rules, you can make a request to the API by using a special header that identifies you as another user.

### Using the API
You can provide the following headers:

* `Impersonate-User`
* `Impersonate-Group`
* `Impersonate-Extra`

### Using `kubectl`
Use the `--as` or `--as-group` flags:

```sh
kubectl apply -f manifest.yaml --as=dev-user --as-group=system:dev
```

# Federated API type
Any API type can be federated, including your own [[crd]]s. You just have to enable it with:

```sh
kubefedctl enable «API type»
```

When you do so, a new type is created as `Federated«Type»`, such as a `FederatedDeployment`. Also a `Federated«Type»Config` is created.

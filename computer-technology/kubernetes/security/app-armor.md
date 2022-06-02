# AppArmor
If you want to use [[linux/app-armor]] profiles in Kubernetes, you'll have to load the profile on the node (all nodes) and the apply it to a pod through an [[annotation]], e.g.:

```yaml
metadata:
  annotations:
    "container.apparmor.security.beta.kubernetes.io/hello": "localhost/k8s-apparmor-example-deny-write"
```

==Why the `/hello` in the annotation key?==

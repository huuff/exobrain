# `securityContext`
Is a field that's available both on a container and on a [[pod]]. I'll make a review of everything you can do with it to improve security:

## Container level
* `privileged`: Never set this to true, it adds full [[linux/capability|capabilities]] to the container
* `capabilities`: I'll explain on this further on the pod level since that'll affect all containers, but note that this is also available for containers if you need more granular capabilities.
* `allowPrivilegeEscalation`: Set to false or else a vulnerability on a [[suid-and-sguid]] binary can be used to gain root privileges.
* `readOnlyRootFilesystem`: Set it to true. It adds a nice deterrent for attackers since they won't be able to, for example, overwrite binaries.

## Pod level
* `capabilities`: You should drop all [[linux/capability|capabilities]] and only add them as needed. Most applications don't need any anyway:
```yaml
securityContext:
  capabilities:
    drop:
      - all
    add:
      - NET_RAW # for example
```
* `runAsNonRoot`, supplemented by `runAsUser` and `runAsGroup` very essential to provide these so the container never runs as root.
* `fsGroup`: This allows setting the group id of mounted volumes, which might be a nice option for sharing these with other pods.
* `seccompProfile`: At least set this one to the runtime default (e.g. [[containerd]]'s default) by doing:
```yaml
securityContext:
  seccompProfile:
    type: RuntimeDefault
```
* `seLinuxOptions`: I know nothing of [[selinux]]. I've read that Kubernetes applies a random seLinux profile by default, which would be a pretty good thing (root in the container wouldn't be able to affect much even if escaping). But I'm skeptic of this, considering how bad Kubernetes' security defaults usually are.

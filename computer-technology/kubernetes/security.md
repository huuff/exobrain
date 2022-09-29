---
tags: index
---

# Kubernetes' Security
These are true as of 1.24.

## It sucks
* Pods automount the service account taken, meaning a compromised pod can have access to the Kubernetes API.
* Containers run as root by default (like in [[docker/root-default|in docker]]). AFAIK, contrary to Docker/[[podman]], Kubernetes doesn't support [[user-namespace]]s. 
* [[psp]] was one way of preventing bad defaults and it got deprecated [in a careless way](https://www.macchaffee.com/blog/2022/psp-deprecation/)
* Anonymous authentication is enabled by default, which can allow, at least, leaking the Kubernetes version information.
* Kubernetes uses no default [[seccomp]], [[kubernetes/security/app-armor]] or [[selinux]] policies, even though your container runtime does (`containerd` for example). This is highly counterintuitive since any containerization user is already used to having default [[lsm]] profiles.
* By default, secrets are stored in plaintext.

## How to solve it
* [[audit-logs-security|Audit logs might be bypassed or tampered with, so you should send them to a remote location]].
* [[security-context|Use an appropriate container and pod security context]]
* (As a follow-up to the previous one): [[running-as-non-root|Try to run your pods as non-root]]
* [[disable-automount-service-account-token]]
* [[disable-anonymous-auth]]
* [[encrypt-data-at-rest]]
* [[always-pull-images]]
* [[read-only|Make read-only everything you can]]
* [[set-requests-and-limits]]: At least prevents denial of service attacks where one pod starves the others
* Set some policies to enforce any of these points, for example consider [[gatekeeper-vs-kyverno|Gatekeeper or Kyverno]]

## Known vulnerabilities
* [[cve-2020-8554]] can be used to intercept cluster traffic to some IP.
* [[net-raw-dangers]]

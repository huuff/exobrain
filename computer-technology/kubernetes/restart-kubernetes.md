---
tags: caveat, tip, how-to
---

# Every time you experience issues with Kubernetes... just restart
I don't know why and it feels absurd but Kubernetes out of all the software I've ever used, it's the one where more issues get solved by just rebooting or turning it off and on again. I've really lost the habit for this since it feels so last-century but:

* Run `systemctl restart kubelet kube-proxy flannel containerd`
* Run `systemctl restart kube-apiserver kube-controller-manager kube-scheduler`
* When all else fails, just reboot the host, every host.
* Even when restarting the nodes, pods seem to get scheduled to the same nodes. The solution? Restart the deployment `kubectl rollout restart deploy «deployment»`
* Restart anything that can be restarted and most issues are magically solved.

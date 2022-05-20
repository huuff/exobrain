# `shareProcessNamespace`
This [[pod]] field allows containers inside the pod to share the PID [[linux/namespace]], so that a container can send a signal (such as `SIGTERM`) to another container inside the same pod.

# `kubectl autoscale`
A very nice command to quickly deploy an [[hpa]]. It runs like:

```sh
kubectl autoscale «resource kind» «resource name» --min=«min replicas» --max=«max replicas» --cpu-percent=«self-explanatory»
```

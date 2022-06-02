---
tags: tip
---

# `kubectl create`
I make this note only to remind myself of which resources are more easily created through a simple imperative command than through a full yaml:

* `kubectl create namespace «namespace name»`
* `kubectl create rolebinding «role binding name» --role=«role» --group=«group» --namespace=«namespace»`
* `kubectl create secret generic «secret name» --from-file=«file»`

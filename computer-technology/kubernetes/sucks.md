---
tags: sucks
---

# What sucks about Kubernetes
A lot actually:

* [[low-cohesion|]]: The system is so decoupled that it becomes uncohesive and debugging some issues is exceptionally hard. This also comes with a lot of subtle and unexpected interactions between systems that are so decoupled that they have no way of cooperate, such as using [[hpa]] and [[vpa]] together or a [[rolling-update]] with a [[pod-disruption-budget]].
* [[kubernetes-vs-systemd|Lack of explicitly defined control flows]]: Is just an addendum to the previous point. Tracing issues becomes really hard, understanding a full process (be it a deployment, an automatic request and installation of certificates) in Kubernetes requires understanding a lot of small parts without any indicator of which parts are actually involved.
* Default security settings are pretty, pretty bad. This might be an inheritance from [[docker]]. Check out the caveats in [[security]]. This is even compounded, since all maintainers/developers seem to adopt this philosophy of "open by default" for everything. Almost any instructions for installing anything that requires a [[service-account]] that you'll find comes with an example that gives it full admin rights and a disclaimer that "you shouldn't do this in production" and "use appropriate privileges". Well, you did the app, didn't you? Why don't you ship an example with appropriate privileges?
* Encoding so much logic in YAML is preposterous. The closest solution I've found to managing that is [[helm]]. But that's actually just interpolating YAML with templates, which is also terrible because when coding a template you're not only concerned with producing sound logic, but also with keeping a valid YAML structure. This is non-trivial and a lot of hacks are needed, such as producing your snippets in the template, and then indenting them correctly on the usage site.

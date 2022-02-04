# What Typescript doesn't fix
A collection of notes on [[javascript]] issues that [[typescript]] does not solve

* [[javascript/checking-types]]: It's even worse since interfaces are removed, there's no way to check if an object implements an interface at runtime. The best choice is using [[type-guard]]s, but that's a lot of manual code for someting that languages with runtime types can do in one expression.
* There's still `null`, `undefined` and now there's even [[void]]. I don't think `NaN` is a problem though.

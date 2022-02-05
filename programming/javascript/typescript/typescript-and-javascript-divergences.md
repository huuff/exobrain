# TypeScript and JavaScript divergences
Historically, TypeScript has added some missing features to JavaScript, however, these features where later standarized into JavaScript and made incompatible with those of JavaScript. Some of these are:

* Enums
* Decorators
* Parameter properties (i.e. `private`, `public` modifiers in constructor parameters of a class)

TypeScript has a compromise to implement any feature that reaches Stage 3 proposal.

Generally TypeScript compilation usually involves erasing types, but:

* Enums and decorators actually emit code
* Some code is emitted for compatibility (e.g. [[downlevel-iteration]])

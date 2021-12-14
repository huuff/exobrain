# Thymeleaf
A [[natural templating engine]] for [[java]] that I'm coming to hate.

### What I dislike about it
* Overall, I think server-side rendering is a worse idea than client-side since the latter is closer to the end product and context. (But this isn't thymeleaf specific) ==TODO: this somewhere else==
* All logic is done using [[spel]]. Spel is arguably only suited for small tasks, it has a terrible balance between interacting with [[java]] (A very verbose language) and needing to be a scripting language (expected to be terse). ==TODO: this last comment in spel==
* Being it a [[natural-templating-engine]] makes you have all the logic inside strings inside attributes which gets very awkward very quickly. The alternative seems to be using Spring beans through [[spel]]. These are very away from the actual template, can't be scoped to the template and have the aforementioned verbosity issues.
* Not exactly about it, but Intellij iDEA (most advanced IDE in the world (TM)) doesn't really work well with thymeleaf (which is expected), automated refactors don't work most of the time and every single thing is red underlined unless some specific type hint is added. Not only that, refactoring beans used in templates does nothing and just hangs, uh.

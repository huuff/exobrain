---
tags: sucks
---

# What sucks about inline styles
* [[pseudo-selector|Pseudo selectors]] and [[pseudo-element|pseudo elements]] can't be used. [Source](https://stackoverflow.com/a/5293299/15768984)
* [[media-query|Media queries]] can't be used either.
* Neither can fallbacks, since you can't have several attributes with the same name in a JavaScript object.
* Animations are another impossibility.
* Worst of all, debugging styles becomes very hard because they all get appended to the `style` attribute on the element.

All in all, there are many [[css-in-js]] libraries that solve these problems.

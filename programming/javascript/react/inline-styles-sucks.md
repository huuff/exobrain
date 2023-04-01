---
tags: sucks
---

# What sucks about inline styles
* [[pseudo-selector|Pseudo selectors]] and [[pseudo-element|pseudo elements]] can't be used. [Source](https://stackoverflow.com/a/5293299/15768984)
* [[media-query|Media queries]] can't be used either.
* Neither can fallbacks, since you can't have several attributes with the same name in a JavaScript object.
* Animations are another impossibility.
* Worst of all, debugging styles becomes very hard because they all get appended to the `style` attribute on the element, which is hard to humanly parse and edit in the browser's devtools
* Using inline styles in an iteration (map) also makes it hard to test in a browser because it gets replicated for each element, so any change to one is not propagated to the rest
* Also, and as a follow-up to the previous point, when the application is rendered server-side, the page size is higher because of the bulk of huge, repeated style attributes (though this might be alleviated by compression)?

All in all, there are many [[css-in-js]] libraries that solve these problems.

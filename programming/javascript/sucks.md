# What sucks about [[javascript]]

* [[mouse-button-handling]] is too low-level and inconsistent
* [[dom-design-mistakes]]
* [[date]] inconsistencies between `0` and `1`-indexing
* [[javascript/reference-equality]]
* Very infuriatingly, [[javascript]] seems to have two or more versions of every single built-in feature. Seems like every time a feature needed fixing, they just added a better new one with very similar syntax:
  * [[checking-types]]: The two are wildly different and you HAVE to know which to use in each case
  * [[fors]]
  * [[variable-declaration]]
* Using [[this]] requires being aware of what it's bound to unlike other languages (Java for example) where it "just werks"
* [[nan]]
* Destructuring and renaming: isn't this backwards? `{ oldName: newName, oldName2: newName2}` feels like creating an object with keys `oldName` and `oldName2` but it's the exact opposite.

 What sucks about [[javascript]]

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
* Can't choose an arbitrary type as the key of an object, you have to do with something that can be converted to a `string`. You'd use a `Map`, but it has the same problems due to [[javascript/reference-equality|everything being checked with reference equality]]. This is terrible in comparison with other languages because there's no way of having real dicts.

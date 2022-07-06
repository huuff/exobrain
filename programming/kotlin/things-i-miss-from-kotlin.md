# Things I miss from Kotlin
(These are true as of Kotlin v1.6)

* No union or intersection types. Check [this issue for progress](https://youtrack.jetbrains.com/issue/KT-13108)
* No destructuring in `when` expressions, making poor pattern matching affordances. I don't know of any enhancement proposals for this (only for [[java]]). It can be worked around by introducing constants representing each branch outside of the when. Otherwise, making them directly inside the when means creating throaway objects on every comparison.

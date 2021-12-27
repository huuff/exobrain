# What sucks about `vue-test-utils`
(As of `vue-test-utils` 2.0.0)

* I don't even think `isVisible` works. I've tried in so many ways with no result whatsoever.

## It's not like [Testing Library](https://testing-library.com/)
* No easy way to find elements by text content (check [this issue](https://github.com/vuejs/vue-test-utils/issues/960)).
* No easy way to wait for animations and visual effects
* This means that `exists` and `isVisible` are very different things. However, from the user perspective the effect is the same. I'd say that differentiating whether some element exists or is visible is an implementation detail (it can always be changed to the other with the same result to the end user)

Vue Testing Library is actually built on top of it but at the time of writing (2021-12-27), it [does not support Vue 3 yet](https://github.com/testing-library/vue-testing-library/issues/176)

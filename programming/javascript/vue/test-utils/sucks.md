# What sucks about `vue-test-utils`
(As of `vue-test-utils` 2.0.0)

## It's not like [Testing Library](https://testing-library.com/)
* No easy way to find elements by text content (check [this issue](https://github.com/vuejs/vue-test-utils/issues/960)).
* No easy way to wait for animations and visual effects

Vue Testing Library is actually built on top of it but at the time of writing (2021-12-27), it [does not support Vue 3 yet](https://github.com/testing-library/vue-testing-library/issues/176)

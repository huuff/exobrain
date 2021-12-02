# What sucks about Bootstrap
* For font sizing, why is `fs-6` smaller than `fs-1`. Is this to mimick the difference between `h6` and `h1`? But then CSS' `font-size` doesn't get smaller with higher values, so this is just bad mapping
* It does not mix well with component-based programming:
  * A lot of components depend on its own javascript library (like modals), calling functions to use them. None of their properties are reactive of course, so you have to hammer these into your framework
  * Still, elements that can be hidden or collapsed depend on computed styles, so you also have to fit these in order to manipulate their visibility in a way that suits your framework.
  * Also, since these depend on computed styles, I don't think there's a simple, programmatic way of testing their visibility. Normal mechanisms (React Testing Library's, or `vue-test-utils`') for testing visibility don't work, and you'll have to resort to check for the presence of Bootstrap's classes (`show`). This means that you'll have to switch your way of testing visibility depending on whether you're testing a component styled with Bootstrap.

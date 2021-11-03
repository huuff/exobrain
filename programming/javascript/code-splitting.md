# Code Splitting
Splitting a [[bundler|bundle]] into several so they can be dynamically loaded.

## Use case
Suppose we have an application with two pages: a login and the dashboard. Obviously the login is going to be much simpler and require less code than the dashboard. We can use **code splitting** to load only the [[javascript]] that belongs to the login until the user has logged in, and then load the rest of it.

## Techniques
* Splitting the vendor code (libraries, framework, etc.) will help us take advantage of the browser caching since our code changes more frequently than the vendor's, therefore the user can cache one and not the other.

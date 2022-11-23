---
tags: tip
---

# When to use reducers

* When many individual pieces of state change together (i.e., if you change one, you must change the other): Grouping it all into a reducer makes it atomic, so that an exception between the two can't leave the application in an inconsistent state.
* For global state that's shared across the application: Without the centralization of a reducer, when changes are to be made to global state it must be disseminated across all of the application, making it easy for you to miss some part and introduce inconsistencies.
* When the state object is complex: A lot of logic might be necessary to convert the previous state into the new one, so it's a good idea to centralize it in a reducer.

---
tags: definition, pattern
---

# Fluent Interface
An interface where methods on an object that mutate it always return an object on which further method calls can be chained to keep configuring it. This can be in three ways:
* A new copy of the same object with some modification
* Mutates the object and returns itself
* Returns a new object that can be further configured and will be part of the original one


### Example
From Spring security:

```java
http
  .authorizeRequests()
    .antMatchers("/", "/home").permitAll()
    .anyRequest().authenticated()
    .and()
  .formLogin()
    .loginPage("/login")
    .permitAll()
    .and()
  .logout()
    .permitAll();
```

As can be seen, the statements on the second indentation level introduce a new scope (grammatical structure), which is configured with the statements in the third indentation level.

## What it solves
This enables creating a [[dsl]], since the returned objects allow creating a grammatical structure (i.e. when a method returns a new object, only methods on that object can be chained). It's generally more concise and easy to understand than separating all calls into their own statements, potentially having to declare intermediate variables.

## Cons
I see this frequently used with mutating the objects in a [[builder-pattern]]. I'm sure that doing it immutable imposes some limits to the grammatical structure you can represent (e.g. you can't create a new substructure, add it to the original one, and return both. When using mutation, you can add it to the original one, yet return only the substructure).

However, using this with mutation violates the [[cqs|command-query separation principle]]. Having mutating methods that return something might confuse the user, that expect the returned object to be a new one and use it as such.

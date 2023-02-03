# Hibernate

* [[dto-projections]]: The suggested and 'best' way of doing things is almost unfeasible.
* [[dont-set-fetching-policy-on-entities]]: A huge footgun as a default.
* Entites must not be final, have all mutable attributes and have a no-args constructor that fills them with null. Almost everything that is terrible. This, however is what the JavaBeans specification requires.

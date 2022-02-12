# `override` modifier
Contrary to Java, in Kotlin `override` is a keyword (a function modifier) and not an annotation, and also, it's mandatory when overriding.

## Reasoning
This prevents you from accidentally overriding a method. Suppose you declare a method in a subclass that it's not on the superclass. If you then add a method to the superclass with the same name, forgetting the one in the subclass (which happens very easily), the subclass method suddenly becomes an override of the superclass method (in Java, of course)

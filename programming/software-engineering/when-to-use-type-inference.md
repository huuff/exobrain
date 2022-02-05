# When to use type inference
Seems that the public opinion is that as much as possible. That's why some styles like AAA (Almost Always Auto) exists in languages like C++

## Pros
* If you always specify types that can be inferred, when these variables are refactored to another type you'll have to change every type annotation. Suppose your objects have an integer id and at some point decide to change to a string id. This means changing every single id variable declared as string, while if you just let it to be inferred, the change will be seamless in a lot of places.
* A more precise type can be inferred, in [[typescript]] you can declare `const enabled: string = "enabled"`, but if you let it be inferred, the more precise `"enabled"` type will be inferred.

## Cons
* Some times you prefer to see the types when they are complex. However a lot of editors solve this lately through inlay type hints.
* You can catch errors when actually specifying the type, perhaps you build `const person = { firstname: "Mike", lastName: "Stranovsky"}` thinking you built a `Person`, but actually you have a typo and the property is called `firstName`, not `firstname`. If you annotated the type, this error would be catched at declaration, while if you don't, it'd only be catched at the usage, which is further away to where it actually happens and thus more confusing.

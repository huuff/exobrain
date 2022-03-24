# Functional Web Framework
A new feature as of Spring 5. I've seen mentioned in some places that it aims to be more explicit than the classic MVC approach, some examples I've found of that:

* No request validation, I believe? You have to explicitly validate it in the router function
* No automatic mapping of the request object. You have to use `request.bodyToMono(«class»)`

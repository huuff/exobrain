# Parts of Kotlin that are incompatible with Java
* AFAIK, [[inline-function]]s get "uninlined" so [[reified-generic]]s are unusable. I think these functions can't even be called.
* Java has no [[coroutine]]s, so `suspend` functions look really weird from java and I don't even think you can call them.

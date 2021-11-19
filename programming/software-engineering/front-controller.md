# Front Controller
A design pattern for [[mvc]] frameworks where there's one [[controller]] that receives all requests, does any work that is common to all of them (authentication, caching, etc.) and then dispatches them to the individual controllers.

The alternative, to have individual controllers for each request would mean that these common would need to be duplicated in all of them.

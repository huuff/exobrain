# Twelve Factor App
A famous article from Heroku illustrating some practices of principles they found to be essential to delivering good software.

* *One codebase tracked in version control*: It means that building your code shouldn't mean having to stitch together source code from several repositories. It doesn't mean you shouldn't have external dependencies, but that it should be very clear and explicit how to retrieve and build these dependencies together automatically.
* *Explicitly declare and isolate dependencies*: Never rely on dependencies being provided externally, any dependencies your application needs should be explicitly declared in its source code, along with a method to automatically integrate them into the build process.
* *Store configuration in environment variables, not in files checked into the codebase*: This makes it easy to deploy the application into several codebases without needing to modify the source code. I'm actually not for this so much, since environment variables are very limited.

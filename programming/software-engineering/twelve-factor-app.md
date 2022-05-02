# Twelve Factor App
A famous article from Heroku illustrating some practices of principles they found to be essential to delivering good software.

* *One codebase tracked in version control*: It means that building your code shouldn't mean having to stitch together source code from several repositories. It doesn't mean you shouldn't have external dependencies, but that it should be very clear and explicit how to retrieve and build these dependencies together automatically.
* *Explicitly declare and isolate dependencies*: Never rely on dependencies being provided externally, any dependencies your application needs should be explicitly declared in its source code, along with a method to automatically integrate them into the build process.
* *Store configuration in environment variables, not in files checked into the codebase*: This makes it easy to deploy the application into several codebases without needing to modify the source code. I'm actually not for this so much, since environment variables are very limited.
* *Treat backing services as attached resources*: External services such as databases might be unreliable, an application should handle the loss of connectivity to an attached resource gracefully.
* *Strictly separate build and run stages*: By ensuring that each stage is separated, you can tighten your feedback loop and react more quickly to any problems within the deployment flow.
* *Execute the app as one or more stateless processes*: All backing data must be outsourced to an external stateful service. This allows autoscaling, adding or removing processes on demand without fear of losing important data.
* *Export services via port binding*
* *Scale out via the process model*: Design to support horizontal scaling. It's much easier to add or remove instances than to upscale and downscale the hardware of a single instance.
* *Maximize robustness with fast startup and graceful shutdown*: Supporting previous points, this will allow you to scale with more instances without downtime.
* *Keep development, staging, and production as similar as possible*: You shouldn't have to find unpleasant surprises when deploying to production an appliation that worked perfectly on development.
* *Treat logs as event streams*: Services shouldn't concern themselves with routing and storing logs. This couples logging to the application and increases complexity. Instead, log everything to stdout and stderr and leave the rotating, storing and routing to a dedicated service.
* *Run admin/management tasks as one-off processes*: It's much easier to have admin and management tasks in the same codebase as your main application. You should not rely on external cronjobs or other measures to perform administrative or maintenance processes of your application, this should all be integrated into your application.

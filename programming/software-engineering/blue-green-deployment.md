# Blue-green deployment
When updating your application, to avoid the complexities and nuances of a [[rolling-update]], you might want to just deploy a whole new version (green), while keeping your old one working (blue). Then when the newer version is ready, you just route all traffic to it.

Of course this has the downside that you have to plan to have enough resources to run two versions of your software at the same time.

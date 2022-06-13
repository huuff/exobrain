# Blue-green deployment
When updating your application, to avoid the complexities and nuances of a [[rolling-update]], you might want to just deploy a whole new version (green), while keeping your old one working (blue). Then when the newer version is ready, you just route all traffic to it.

## Pros
* It's very easy to roll back a bad version, just redirect traffic to the other one

## Cons
* Database migrations can be difficult to manage ==but this is also true for any [[rolling-update]], isn't it?==
* You need double the capacity to keep both versions running at the same time.

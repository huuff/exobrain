# `.dockerignore`
You can set rules in this file in your [[build-context]] to specify which files or directories you don't want to upload to the [[build-context]] before building. This way you can remove either:
* Heavy files that are not necessary for the build
* Changing files that will make any build rebuild extra [[layer|layers]]

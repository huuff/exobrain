# Hooks
Git hooks are a way to execute custom scripts whenever some event is triggered in the VCS. There are *client-side hooks* and *server-side hooks*. 

Note that since hooks are stored under the `.git` directory, they are stored only on the local computer and not on the remote. This means that you won't automatically download hooks for a project and if you want to share them you must find another way.

### How-to use them
Any script/program with named after the specific event it's supposed to trigger for in the `.git/hooks` directory will be run on that event. There are always example hooks created for every project in that directory, and you can use them if you rename them (they all have the `.sample` suffix added to their names)



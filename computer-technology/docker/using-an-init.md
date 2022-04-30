# Using an init in a Docker image
There are many reasons why you'd want to use an init in a Docker image:
* If you depend on a [[restart-policy]], a container that immediately exits during failure can't be used to do any useful debugging or diagnosing. Every time it exits it'll be scheduled for restart with a back-off and there's little you can do with it during that time
* The init system is responsible for some system management tasks such as reaping zombie processes. If your application spawns process it might run into issues because these might never get reaped.
* With an init you can restart your service without having to restart the whole container, which makes troubleshooting easier.

It's common practice to add an init process to your container, usually a less resource intensive one than `systemd`, such as `runit`, or `tini` (which is bundled with Docker)

You can supply the `--init` flag to `docker run` to automatically run the `tini` init inside of it to manage your program.

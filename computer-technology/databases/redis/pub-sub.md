# Pub/Sub
Redis has a publish/suscribe mechanism with a few important characteristics that differentiate it from other implementations:

* The message is not stored after delivering it
* The message is just lost if the suscriber is unable to consume it

On the other hand, this makes pub/sub really easy to use:

* Just publish a message with `PUBLISH «channel» «message»`
* Suscribe to a channel with `SUSCRIBE «channel»`
* You can suscribe to many channels matching a pattern by doing `PSUSCRIBE «pattern»`

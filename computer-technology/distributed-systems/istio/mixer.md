# Mixer
Abstracts away some responsibilities like metrics collection, auditing and policies. Usually these responsibilities have to be made by the application by contacting specific APIs directly, but thanks to Mixer this burden can be removed from the application. Some backends it can use are:

* Logging
* Authorization
* Telemetry

Before each request, the proxy directs it to Mixer for inspection, which might refuse it.

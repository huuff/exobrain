# Vertical Pod Autoscaler (VPA)
A very nice feature that must be installed separately on the cluster. It allows selecting pods by label and analyzes their resource usage at runtime (through the [[metrics-server]]) to determine what [[resources]] requests and limits it needs.

It's composed of the following components:
* Recommender: Monitors usage and provides recommendations
* Updater: Kills pods that are not using their recommended resources (if enabled)
* Admission plugin: An [[admission-controller]] that provides the resources for newly created pods.

It has the following modes of operation:
* `"Off"`: It's disabled. You have to remember to use quotes since [[yaml]] decides to convert the unquoted `Off` to a boolean (false)
* `"Initial"`: Only applies resources on creation
* `"Recreate"`: It stops pods that are not running with the recommended resources so they can be recreated with them. `Auto` is recommended over it.
* `"Auto"`: It tries to use restart-free updates (does that exist?) to provide resources, but preventing having to stop the running pods.

# SUNBURST attack
A hostile attack that infected US government computers and Fortune 500 networks with a hidden malware that entered through the [[continuous-integration]] pipeline. So it's a [[supply-chain-attack]]. 

## How it worked
The SUNSPOT malware infected the earliest phases of the CI pipeline, modifying the code to inject itself before it was built, then, returning it back to its original state to hide the tampering. This way the code was considered legitimate by the CI and thus, got signed and therefore trusted by all downstream clients.

# SUNBURST attack
A hostile attack that infected US government computers and Fortune 500 networks with a hidden malware that entered through the [[continuous-integration]] pipeline. So it's a [[supply-chain-attack]]. 

## How it worked
It infected the earlier build phases of the pipeline, injecting malicious code into the source code before it was built. Then, it removed evidence of the tampering and managed to get the CI system to sign the produced artifact, thus making all clients trust it.

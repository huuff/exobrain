# Root CA
For [[x509-certificate|x509 certificates]] to work, they must be signed by a [[certificate-authority]]. Of course, these certificate authorities' certificates must also be certified by some other CA. The end of this CA chain is a *root CA*, whose certificate is signed by itself and must be trusted by all actors.

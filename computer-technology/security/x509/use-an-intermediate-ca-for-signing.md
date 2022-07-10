---
tags: tip
---

# Use an intermediate CA for signing
That is, don't sign client certificates directly with your [[root-ca]]. Instead, sign an intermediate CA's certificate with the root CA and sign client certificates with that one.

This way, if the CA gets compromised you can just revoke its part of the hierarchy instead of the whole tree from the root CA.

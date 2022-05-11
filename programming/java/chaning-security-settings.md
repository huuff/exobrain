---
tags: how-to
---

# Change security settings
Kind of obscure, but you might need to enable TLSv1.0 if you use legacy systems. This is disabled in `$JRE_HOME/lib/openjdk/conf/security/java.security`

There you'll find a line like:
```
jdk.tls.disabledAlgorithms=SSLv3, TLSv1, TLSv1.1, RC4, DES, MD5withRSA, \
    DH keySize < 1024, EC keySize < 224, 3DES_EDE_CBC, anon, NULL
```

So you just have to remove `TLSv1` from there.

### If you can't edit the JRE installation
Like I do, on [[nixos]]. You can just copy the whole file somewhere and remove TLSv1 from there, then run your java application with `-Djava.security.properties==«path to the new java.security»`

It's important to use `==`, not `=`!! `=` merges the file you provide with the default one, only `==` completely replaces it.

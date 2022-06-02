---
tags: how-to
---

# Creating a certificate for certificate authorization
In order to get an [[x509]] certificate for [[certificate-authorization]] you need to:

1. Generate a private key for the certificate. e.g. `openssl genrsa -out priv.key 4096`
2. Generate the [[x509/csr]]. This is done with the private key generated in the previous step and a configuration file provided to `cfssl`, for example.
3. Send the CSR to Kubernetes through a `CertificateSigningRequest` resource:

```yaml
apiVersion: certificates.k8s.io/v1beta1
kind: CertificateSigningRequest
metadata:
  name: mycsr
spec:
  groups:
    - system:authenticated
  request: «csr encoded in base64»
  usages:
    - digital signature
    - key encipherment
    - server auth
    - client auth
```

4. An administrator must approve the certifiate through `kubectl certificate approve mycsr`
5. Export the certificate from the API

```sh
kubectl get csr mycsr -o jsonpath='{ .status.certificate }' | base64 --decode > certificate.crt
```

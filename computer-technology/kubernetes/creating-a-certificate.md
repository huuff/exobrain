---
tags: how-to
---

# Creating a certificate for certificate authorization
In order to get an [[x509]] certificate for [[certificate-authorization]] you need to:

1. Generate a private key for the certificate. e.g. `openssl genrsa -out priv.key 4096`
2. Generate the [[x509/csr]]. This is done with the private key generated in the previous step and a configuration file provided to `cfssl`, for example. Note that:
  * The `O` (Organization) field is the name of the K8s group this user will be in
  * The `CN` is the name of the user.
3. Send the CSR to Kubernetes through a `CertificateSigningRequest` resource:

```yaml
cat <<EOF | kubectl create -f - 
apiVersion: certificates.k8s.io/v1beta1
kind: CertificateSigningRequest
metadata:
  name: «certificate name»
spec:
  groups:
    - system:authenticated
  request: $(cat $CSR_FILE | base64 | tr -d '\n')
  usages:
    - digital signature
    - key encipherment
    - server auth
    - client auth
EOF
```

4. An administrator must approve the certifiate through `kubectl certificate approve mycsr`
5. Export the certificate from the API

```sh
kubectl get csr mycsr -o jsonpath='{ .status.certificate }' | base64 --decode > certificate.crt
```

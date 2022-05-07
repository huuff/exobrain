# Versioning in Helm charts
There are two fields:
* `version`: Is the version of the [[chart]], it can be changed without changing the version of the actual application
* `appVersion`: Is the version of the actual application. It's actually only for documentation, since Helm ignores it.

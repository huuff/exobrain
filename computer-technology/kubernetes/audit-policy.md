# Audit Policy
An audit policy allows logging of all interactions with the API server, it must be provided to the API server through the `--audit-policy-file` flag.

### Audit levels
* `None`
* `Metadata`: Audit only the metadata, such as the timestamp, user, resource, action and little else.
* `Request`: Log the metadata and also the full request body
* `RequestResponse`: Logs the metadata, the request and the response body. This might not only be wasteful of space, but also contain sensitive information if the resource is, for example a [[secret]]

### Log backend
There are some flags you can provide to configure how to store logs:

* `--log-audit-path`: Path where logs will be stored
* `--audit-log-maxage`: Maximum number of days to keep the records
* `--audit-log-maxbackup`: Maximum number of files to keep on the master node
* `--audit-log-maxsize`: Maximum size in megabytes of an audit log file before it gets rotated
* `--audit-webhook-config-file`: Webhook to which to send logs. Might be useful to send them to [[falco]] though I'm unsure whether falco needs so.

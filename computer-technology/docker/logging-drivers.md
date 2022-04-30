# Logging drivers
Docker supports a variety of drivers for logging:
* `json-file`
* [[fluentd]]
* `syslog`
* `journald`
* `gelf`
* `awslogs`
* `splunk`
* `etwlogs`
* `gcplogs`
* `logentries`

You can specify a logging driver by either specifying it in the command line (e.g. `--log-driver=syslog`) or system-wide in the `daemon.json`.

## Caveats and tips
You must take into account that only one driver can be enabled at the same time, and that only `json-file` and `journald` logs can be seen with the [[docker-logs]] command.

If guaranteed delivery of every log is not necessary, [[udp]]-based solutions are recommended.

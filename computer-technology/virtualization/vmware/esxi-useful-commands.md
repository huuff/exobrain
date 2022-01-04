# Some useful commands inside ESXi

* `vim-cmd vmsvc/getallvms`: List all VMs
* `esxcli network firewall ruleset list`: List firewall rules
* `esxcli network firewall ruleset set --enabled=true --ruleset-id=<ruleset>`: Enable access for rule, and likewise:
* `esxcli network firewall ruleset set --enabled=false --ruleset-id=<ruleset>`: Disable access for rule

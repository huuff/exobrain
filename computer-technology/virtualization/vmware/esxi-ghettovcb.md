# `ghettoVCB`
An esxi application that allows you to make full-disk backups without turning off the machine. It's not very well documeted, but here's my process

1. Create a `ghettoVCB.conf` file. There are a lot of options I don't even understand, but I just write the backup destination directory, such as:
```
VM_BACKUP_VOLUME=/vmfs/volumes/<path to backup dir>
```

2. You're gonna need to find the name of the machine you want to backup so check it using a command from [[esxi-useful-commands]]

3. Cast the following incantation:

```
./ghettoVCB.sh -g ./ghettoVCB.conf -m <vm name>
```

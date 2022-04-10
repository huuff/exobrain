# Shared storage
Storage that can be accessed from multiple machines. It might be a really good choice for hosting storage for distributed systems since having all of it centralized might make it easier to manage it such as:
* Having good back-up automation, without having to distribute it across many different storage solutions
* Enabling automatic replication through [[raid]]
* More flexibility in storage, there's only so many disks you can directly plug in to a machine, and then these might be underutilized and changing them might require downtime.
* Since it's transparent to the machine, adding or removing storage is seamless.

Some types:
* Network storage: Actually just storage in a different computed that might be accessed through a network protocol such as [[nfs]] or [[samba]]. Not very fast so not usually an option for performance-critical loads.
* Network-Attached Storage (NAS): A dedicated piece of hardware, accessed just like network storage, but the hardware can be heavily optimized for storage access and retrieval. Apparently there are solutions that allow clustering of NAS solutions, replication and other more advanced features transparently. This is still accessed through protocols like [[nfs]] and [[samba]].
* Storage Area Network (SAN): Actually more or less the same as NAS, but uses more specialized hardware for it?
  * Fibre channel traffic usually goes through fiber optic cables and HBA (Host Bus Adapters) instead of NICs
  * iSCSI: Actually just an [[scsi]] interface where traffic goes through normal IP.

==These notes are a stub, I know so little about most of this, they are bound to be inaccurate, also the terminology is unclear for me and I got it from older books==

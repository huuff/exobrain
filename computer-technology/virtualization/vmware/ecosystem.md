# VMware Ecosystem
I think it has a huge problem with one thousand very similar names (all v-something or vSphere-something) and I find it really difficult to keep track. At times I think the terrible naming is some sort of commercial strategy to keep us confused and request paid support.

* **vSphere ESXi** (or just ESXi): Is the hypervisor itself.
* **vCenter**: Is an application that manages multiple hypervisor. The main management hub for all VMware products.
* **vSphere Update Manager (VUM)**: Checks hosts (aka ESXi instances) and VMs for missing updates and automatically updates them. For VMs it only installs VM hardware and [[vmware-tools]] updates, not guest-OS updates.
* **vMotion**: Moves VMs between ESXi instances with no downtime.

## THE CLIENT HORROR
Okay this one makes my fucking head hurt:

* **vSphere Desktop Client** (aka think client): This is a (discontinued) Windows-only C# application, I think it's for managing both vCenter and ESXi instances? not sure
* **vSphere Host Client**: This is an embedded HTML5 that comes with each ESXi instance for managing it.
* **vSphere Web Client**: Originally a flash app, that I think was ported to HTML5, which is now the standard client. It's for managing vCenter (it'd be nice if that were somewhere in the name).
* **vSphere Client**: This one's super fucking difficult. The term is actually overloaded with time, so what it means depends on when the document you're reading was written! Originally it was the desktop client. Now it's the HTML5 Web Client.

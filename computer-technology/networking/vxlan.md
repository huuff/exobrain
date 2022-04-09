# VXLAN
VXLANs (Virtual Extensible LANs) allow creating a layer 2 network on top of a layer 3 infrastructure. That is to say: allows creating simple virtual networks that hide the complexities of the underlying network.

To create this layer 2 *overlay* network, a VXLAN *tunnel* is created through the underlying layer 3 IP infrastructure. The term *underlay network* might be used to refer to this underlaying layer 3 infrastructore.

Each end of the VXLAN tunnel is terminated by a VXLAN Tunnel Endpoint (VTEP). This VTEP is the one that performs encapsulation/de-encapsulation of packets and all the magic necessary to make it work.

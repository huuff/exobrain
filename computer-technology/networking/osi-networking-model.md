# OSI networking model
A 7-layered approach to modelling the networking stack, although modern implementations actually use only 4 (the original OSI model uses a presentation and session layers that aren't used in the current model):

* Layer 7 is the application layer. This is the layer at which application protocols such as HTTP work.
* Layer 4 is the transport layer, which usually means TCP or UDP. This is the layers at which port numbers apply
* Layer 3 is the IP layer, is the one in which packets travel and IP routers operate.
* Layer 2 is where data packets are addressed to endpoints that are connected to network physical or virtual interfaces. There are several protocols at this layer like ethernet and wi-fi. This is the layer at which MAC addresses operate
* Layer 1 is called the physical layer, it's where a physical interface is connected to some physical cable through which the data travels.

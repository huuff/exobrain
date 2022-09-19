# TCP vs UDP
A recent trend can be seen of moving towards UDP for Application-level protocols instead of relying on the assurances of TCP.

The most important fact to realize about this is that TCP tries to be *generally* reliable for all sorts of higher-level protocols, which means it might err on the side of caution and be slower for certain use-cases where this caution is unneeded. Also, since TCP is so low-level, it's development is closely tied to the kernel of the operating system it resides on, and thus harder to iterate on it.

Higher-level protcols using UDP means they use a very fast and simple base protocol and have to implement most of the controls and reliance mechanisms in higher layers. This is fine, however, since at higher layers we have more information we can use to decide how to act on lost packages, retransmissions, etc. Also, as mentioned, this allows us to iterate on the protocol more quickly in the user space instead of the user space.

An example of this trend is the [[quic]] protocol, on which [[http3]] is based.

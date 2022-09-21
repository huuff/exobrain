# QUIC
QUIC is a protocol that wraps [[udp]] and provides it with encryption, authentication, and congestion control features. Is the base of [[http3]]. Some of its features are:

* Out of order packet processing: With h2 if a packet is lost the entire connection stalls until it's received. QUIC allows the application layer to continue processing packets for other streams.
* Flexible congestion control: Its congestion control is designed to be pluggable, which will make it easier to experiment with different algorithms
* Low connection establishment overhead: QUIC's goal is to have a zero round-trip time (0-RTT) connection establishment, including encryption and authentication.
* Authentication of transport details: TCP is vulnerable to injection attacks. QUIC will authenticate the packet header, making such attacks more difficult.
* Connection migration: It allows a client to change networks or IP addresses and keep the same connection open. 

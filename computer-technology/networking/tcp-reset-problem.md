# TCP Reset Problem
If a server performs an immediate close of a TCP connection and the client, unaware of this, sends additional requests, the server will send a reset packet to the client. This reset packet might erase all of a client's unacknowledged input buffers before they can read other server responses.

[[http]] solves this by closing a connection by stages: first closing write (output) buffers, signals to the other party that the receive buffers are about to be closed, and the other party can acknowledge this before proceeding.

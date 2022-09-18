# Slow Start
A mechanism used by TCP to empirically determine the optimal size of a congestion window. It's intended so that a new connection does not cause any additional congestion to an already congested network.

The connection initiator starts with a small connection window and keeps making requests, increasing it until one every next request until a packet fails, at which point an optimal size is determined and the connection starts the [[congestion-avoidance-phase]].

Understanding of the slow start is critical because this means it takes a few round trips of slow transmission until the optimal rate is determined.

# Streams compress common field names
When several events are sent to a stream subsequently with the same field names, Redis only stores these for the first event, and then refers to the stored ones through a pointer.

# Join tokens
Joining nodes to a swam is incredibly easy. When the swarm is initiated two tokens are printed to stdout: 
* A token to join as a manager
* A token to join as a worker

Then on any docker-capable host you just run `docker swam join --token «token`. If you lose your tokens you can simply create new ones on a manager by doing `docker swarm join-token --rotate` (the `--rotate` flag will create new tokens)

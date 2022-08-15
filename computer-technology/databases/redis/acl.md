# ACL
Since Redis 6 there's some authentication mechanisms more complex than the simple [[requirepass]] directive.

ACL has very special syntax such as

`ACL SETUSER «username» ON «pattern of accessible keys» +«commands» >«password»`

Note that the `ON` part of the command specifies that this user is enabled (as in `ON/OFF`).

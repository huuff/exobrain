# Quality values
Quality values can be used by a client to specify a weight of preference on several types of acceptable responses for a [[content-negotiation]] request header. These are specified as `«type»;q=«value»`, where the value can range from `0.0` to `1.0`

### Example
A client may specify that it strongly prefers spanish, but that may accept english if necessary, and under no circumstances does it want to receive french:

`Accept-Language: es;q=1.0, en;q=0.5; fr;q=0.0`

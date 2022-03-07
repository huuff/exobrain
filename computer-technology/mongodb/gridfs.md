# GridFS
A specification for storing and handles files inside MongoDB. The basic idea is that we split data into *chunks* and then save these chunks as documents inside MongoDB. There are two interesting collections:

* `fs.chunks`: the actual chunks, these documents contain the binary data in their `data` field
* `fs.files`: metadata associated with each file

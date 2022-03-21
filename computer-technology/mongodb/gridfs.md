# GridFS
A specification for storing and handles files inside MongoDB. The basic idea is that we split data into *chunks* and then save these chunks as documents inside MongoDB. There are two interesting collections:

* `fs.chunks`: the actual chunks, these documents contain the binary data in their `data` field
* `fs.files`: metadata associated with each file

## Advantages
* GridFS can simplify your stack if you're already using MongoDB, so you don't have another tool to manage file storage.
* GridFS leverages any existing replication and autosharding you've set up.
* GridFS does not have the issues some specific filesystems have when used to store user uploads, such as storing very large amounts of files in a single directory. ==I've suffered this, but the wording is still vague==

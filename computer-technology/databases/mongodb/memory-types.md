# Memory types reported by MongoDB
MongoDB reports on three types of memory:

* Resident memory: It's the actual memory taken by MongoDB in your RAM. If your entire dataset fits the RAM, then its size should be approximately equal to that of your dataset.
* Virtual memory
* Mapped memory: All the memory MongoDB has ever accessed, so all the pages it has addresses to. It's only relevant for releases before 4.0 that used the MMAP storage engine. Now that MongoDB uses the [[wiredtiger]] engine, it's no longer relevant, so it should always be at `0`.

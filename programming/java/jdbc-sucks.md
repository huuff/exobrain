# Things that suck about JDBC
Almost everything honestly

* Inherently blocking, R2DBC had to be invented to cope with it for reactive applications.
* No way to use socket authentication :( forcing me to create and use a password is a hassle, maybe even a security risk.

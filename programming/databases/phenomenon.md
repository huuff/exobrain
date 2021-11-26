# Phenomenon
Data anomality integrities that appear when the [[isolation-level]] is relaxed. These are:

* "Official" (Present in the SQL-92 standard)
  * [[dirty-read]]
  * [[non-repeatable-read]]
  * [[phantom-read]]
* Unofficial
  * [[dirty-write]]
  * [[read-skew]]
  * [[write-skew]]
  * [[lost-update]]

Most of my notes on these come from [[high-performance-java-persistence]] (With diagrams shamelessly copied)

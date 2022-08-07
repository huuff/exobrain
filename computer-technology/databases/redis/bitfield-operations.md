# Bitfield operations
As [[bitmap-operations]] treat strings as arrays of bits, bitfield operations treat them as arrays of cells of bits. Bitfield operations allow storing several integer values of a specific number of bits in a single string. Operations start with the `BITFIELD` command:

* `BITFIELD get «type» «offset»`
* `BITFIELD set «type» «offset» «value»`

Parts of these commands you should take into account:
* `«type»` is the type of the integer we can store, for example, `u8` is an unsigned int of 8 bits.
* `«offset»` is the position of this field if all previous fields were of the same size, for example `BITFIELD get u8 2` returns the 8 bits after two fields of 8 bits, that is, the 8 bits starting from bit 16.

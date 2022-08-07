# Bitfield operations
As [[bitmap-operations]] treat strings as arrays of bits, bitfield operations treat them as arrays of cells of bits. Bitfield operations allow storing several integer values of a specific number of bits in a single string. Operations start with the `BITFIELD` command:

* `BITFIELD get «type» «offset»`
* `BITFIELD set «type» «offset» «value»`

Parts of these commands you should take into account:
* `«type»` is the type of the integer we can store, for example, `u8` is an unsigned int of 8 bits. It's composed of:
  * The first letter is the type: `u` for unsigned integer and `i` for signed integer
  * The following integer is the size of the type.
* `«offset»` is the position of this field, two notations are possible here:
  * `#«position»` returns the specified offset multiplied by the size of the bitfield, for example `BITFIELD get u8 #3` returns the third 8-bit field
  * `«position»` returns the value from the specified offset, for example `BITFIELD get u8 3` returns the 8 next bits starting bit the third bit.

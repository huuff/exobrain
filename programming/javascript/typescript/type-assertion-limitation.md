# Limitations of type assertions
You can use a type assertion to convert between types `A` and `B` when either is [[assignability|assignable]] to the other. If this does not happen, then you get an error

`Conversion of type 'A' to type 'B' may be a mistake because neither type sufficiently overlaps with the other`

The error message itself suggest a solution, if you wan't to assert `A` as `B`, first assert it as `unknown`:

`A as unknown as B`

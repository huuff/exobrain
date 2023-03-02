# ID types in MongoDB
Spring Data allows either `BigInteger`s or `String`s to be used as MongoDB's `Document`s IDs, these get automatically translated into `ObjectID`s and thus support MongoDB's autogeneration features. 

### Why not a special `ObjectID` type?
Because using that type would couple the definition of the entity to the MongoDB driver.

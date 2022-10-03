# Validator
Validators are used with [[conditional-request|conditional requests]] to execute them only for certain values of the validator. The specification groups them into two different types:

* Weak validators may not always identify a unique version of a document
* Strong validators must always specify a unique version of a document

The main difference is that weak validators can allow more leeway for documents to be considered unchanged if the changes it received are not considered semantically important enough to invalidate all cached copies of it. As examples:

* An [[etag]] is considered a strong validator if it's closely tied to the unique document. For example, if it contains a hash difest of its contents
* A `Last-Modified` header is considered a weak validator because it only tracks modifications up to a second resolution, while multiple changes can happen in the same second.
* An [[etag]] can be made a weak validator if it's specified to only change when semantically significant changes are made. For example, an etag must be prepended with `W/` to specify that it's weak, and it can be used by the client to signify that it only wants to retrieve the document if it has changed significantly. (e.g. `W/4.0`)

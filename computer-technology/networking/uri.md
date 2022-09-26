# URI (RFC 3986)
An *Uniform Resource Identifier* is a sequence of characters that identifies a specific resource. URI's have a small required grammar that can be further specialized by subsets of it, such as URL (*Uniform Resource Locator*).

An URI does not necessarily identify a single, unchanging or unique resource.

### Percent encoding
An URI is limited to characters present in the US-ASCII character set. Any other characters are represented as a triplet of a percent symbol (`%`) and two hexadecimal characters representing the octet value of that character.

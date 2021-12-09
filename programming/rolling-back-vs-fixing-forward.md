# Rolling Back vs Fixing Forward
Two usual strategies for dealing with breaking changes.

* **Rolling back**: Returning to an old state of the application by restoring a backup, or just undoing changes.
  * Having to roll back probably means stopping the process, and this overhead might be costly
  * For databases, when data is constantly changing, stopping to roll back might mean losing changes
* **Fixing forward**: Just fixing the errors in-place
  * Might be done through quick, untested hacks

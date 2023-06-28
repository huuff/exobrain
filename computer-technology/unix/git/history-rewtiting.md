# History Rewriting
History Rewriting can either be seen as the bane of git or the edge it has over its competitiors.

Git allows changing the published history through certain commands such as:

* [[rebase]]
* [[amend]]

This has several benefits:

* Allows you to fix some (otherwise permanent) errors such as committing a private key by removing it from history.
* Can help you keep a clean history: usually when you're in the fraught of coding, you're unable to make smart decisions about what and when to commit. With history rewriting you can initially commit whatever and whenever you initially find convenient and then rewrite history to squash or reorder commits to make history look cleaner.

But also has several downsides:

* [[never-rewrite-published-history|You can really mess up stuff by rewriting history that has been pushed]]

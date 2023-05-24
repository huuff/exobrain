# Position of external tags in HTML
("external tags" as in `link` stylesheets or `scripts`)

### `link` stylesheets
AFAIK, it was recommended to put everything at the topmost, inside the `head` tag. This is because some browsers (notably, Internet Explorer) didn't render everything until all stylesheets did load, in order to avoid a Flash Of Unstyled Content (FOUC).

When the referenced stylesheet isn't critical to the main content, this actually made the page slower (critical content took later to download than that non-critical stylesheet), but the UX was improved by the page rendering earlier.

However, today AFAIK, browsers are more lenient with this and non-critical stylesheets can go at the bottom to actually improve the loading speed.

### `script` tags
These should be at the bottom of the document or use the `defer` attribute (which has the same effect, even though the script can be anywhere in the document). This is because (==this information might be old)== browsers blocked until a script was finished loading, so any content under a `script` tag wouldn't load until the script is finished loading.

Browsers do this sequentially and in a blocking manner because it can't be guaranteed that the scripts don't have dependencies on the order of their execution, and thus, parallelizing them might break some functionality.

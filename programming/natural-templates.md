# Natural template engine
A [[template-engine]] whose code is valid HTML and thus, can be rendered by the browser without preprocessing.

### Pros
* Since these templates can be rendered without preprocessing, we don't need to spin up our whole application just to see how the final page will look like.

### Cons
* I feel that making these fully compatible with HTML greatly limits their power, and writing all our template logic in an attribute string quickly becomes unwieldly.

### Examples
* [[thymeleaf]]'s templates just consist of specific HTML attributes, which in the end are just ignored by the browser

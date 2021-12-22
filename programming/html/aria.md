# Some important ARIA attributes

* `aria-current="page"`: For marking the current page in breadcrumbs
* `aria-label`: Gives some description for a visual element, example values are: `Close`, `Breadcrumb`.
* `aria-labelledby`: Id of an element that contains text that says what this element is. This and `aria-labelledby` are good enough to replace `<label>` tags if other visual elements suffice to identify this element.
* `aria-describedby`: The id of some element that contains text that describes this element. This is expected to be longer than a simple label of `aria-labelledby`. Example: A text describing the requirements of a valid password for a password field.
* `aria-hidden='true'`: Hide for screen readers. Useful for icons and other visual elements.

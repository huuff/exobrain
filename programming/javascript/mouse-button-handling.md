# Mouse button handling
In a `MouseEvent` (such as those dispatched by `mousedown`) there are two ways to access pressed buttons:

* `button` property indicates that the button pressed that triggered the event is:
  * `0` if left button
  * `1` if middle button
  * `2` if right button
* `buttons` property gives the state of all pressed buttons at any point in time. Each button has a numeric value and the value of the property is the sum of them all. You can take the modulus of the property by the numeric value of the button to see if it's pressed:
  * `1` is the left button
  * `2` is the right button
  * `4` is the middle button

This is absolutely fucking terrible since:
* The interface is really low level. Numeric codes instead of an enum (or constants), using modulus to see if a button is pressed instead of a bitset with an interface that abstracts the details.
* Not only the values are different for each one, but also the ordering!

# Event Modifier
When attaching an event listener using `v-on`, we can add an **event modifier** by appending `.eventmodifier` to modify the effect.

### Examples
* Preventing form submission: `<button type="submit" v-on:submit.prevent="eventHandler">`
* Triggering only on right click: `<button type="submit" v-on:click.right="eventHandler">`
* Triggering only on a specific key: `<input type="text" v-on:keyup.enter="eventHanlder">`

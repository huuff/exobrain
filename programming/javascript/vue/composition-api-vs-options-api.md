# [[composition-api]] vs [[options-api]]
The [[composition-api]] aims to fix two main issues with the [[options-api]]:

* Code that logically belongs together gets splits up across multiple options (data, methods, computed): When changing code related to one concern we might have to scroll a lot to get to the different parts of the file that are related to it.
* Re-using logic between components can be tricky and cumbersome ==TODO: I'm not sure I understand this one, can't I just put the logic in plain old typescript files and then import these?==
* `setup` blocks are awesome and there one can add static types to props and events using [[typescript]] so that pretty much settles the score.

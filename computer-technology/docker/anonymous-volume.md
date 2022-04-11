# Anonymous volume
An anonymous volume is one that is created automatically without a name specified by the user. They are assigned an unique ID automatically on creation. (==Are these the ones that the `VOLUME` instruction in a Dockerfile create?==).

They are harder to work with when you have to manually stitch together filesystem dependencies among containers, but they allow better decoupling from specific filesystem locations and names. They are great candidates for the [[volumes-from]] feature.

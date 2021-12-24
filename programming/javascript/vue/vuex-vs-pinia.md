# Pinia > VueX
(These are true as of Pinia 2 and VueX 4)

* VueX getters, mutations and actions are not typed! We can add types in the store but eventually in the usage it's all any's. Pinia's are well typed from the beginning.
* Pinia is easier to test, just using `createTestingPinia` sets you up for testing. VueX on the other hand requires some black magic (manually mocking the library and the actions)
* Actually VueX 5 solves some of these issues being heavily based on Pinia's API. (I read this somewhere but I don't have the source)

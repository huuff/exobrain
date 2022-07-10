# `changelogSync`
Marks all undeployed changes as executed

## Use case
When you append the changelog with the diff of changes not made through [[liquibase]], in order to prevent these changes from being redeployed, just run `changelogSync` to mark them as deployed.

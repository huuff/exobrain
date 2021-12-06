# One-to-one
A binary [[relationship]] where each [[entity]] might [[participation|participate]] at most once in it.

## Diagrammatic representation
Standard [[participation]] notation applies.

### [[diagram-standards|IDEF1X]]
These are connected by lines. 
```mermaid
erDiagram
  ENTITY1 ||--o| ENTITY2 : participates
```


### [[diagram-standards|Chen's notation]]
These are represented by a diamond that points a directed line (with an arrow head) to each participating entity.

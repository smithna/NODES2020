// 09. Add non-adjacent relationships
MATCH (p1:Person), (p2:Person)
WHERE p1 <> p2
AND NOT (p1)-[:KNOWS]-(p2)
WITH p1, collect(p2) as people
WITH p1, apoc.coll.randomItems(people, 2, false) AS newNeighbors
UNWIND newNeighbors as neighbor
MERGE (p1)-[:KNOWS {adjacent:false}]->(neighbor)
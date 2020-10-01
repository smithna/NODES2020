// 04. Create diagonal neighbors
//Create diagonal neighbors
MATCH (p1:Person)-->(p2:Person)
WHERE p1.row = p2.row-1
WITH (p1), (p2)
MATCH (p2)--(p3)
WHERE p3.row = p2.row
CREATE (p1)-[:KNOWS]->(p3);
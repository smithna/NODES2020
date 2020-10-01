//03. Create links to lower neighbors
MATCH (p1:Person), (p2:Person)
WHERE p1.column = p2.column
     AND p1.row = p2.row - 1
CREATE (p1)-[:KNOWS]->(p2);
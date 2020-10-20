//02. Create links to right neighbors
MATCH (p1:Person), (p2:Person)
WHERE p1.row = p2.row
     AND p1.column = p2.column - 1
CREATE (p1)-[:KNOWS {adjacent:True}]->(p2);
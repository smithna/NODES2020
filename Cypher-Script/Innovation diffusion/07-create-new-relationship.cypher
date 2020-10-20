//07. Create new relationship
MATCH (c1:Character {name:"Axell-Florent"}),(c2:Character {name:"Brandon-Norrey"})
CREATE (c1)-[:INTERACTS]->(c2)
RETURN *
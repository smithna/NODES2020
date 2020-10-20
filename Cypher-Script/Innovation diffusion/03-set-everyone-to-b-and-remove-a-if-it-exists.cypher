//03. Set everyone to B and remove A if it exists
MATCH (c:Character) 
SET c:BStrategy 
REMOVE c:AStrategy
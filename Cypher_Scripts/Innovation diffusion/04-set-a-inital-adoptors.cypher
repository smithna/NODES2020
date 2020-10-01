//04. Set A inital adoptors
MATCH (c:Character)
WHERE c.name = "Jon-Snow"
REMOVE c:BStrategy
SET c:AStrategy
RETURN c
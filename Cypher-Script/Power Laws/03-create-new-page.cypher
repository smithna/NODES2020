// 03. Create new page
MATCH p=(source:Page)-[:LINKS_TO]->(target:Page)
WITH collect(p) AS paths
WITH paths,
toInteger(floor(rand()*size(paths))) as randomIndex
WITH nodes(paths[randomIndex]) AS selectedNodes,
size(paths) as pageCount
WITH pageCount, 
case when rand() < $p THEN selectedNodes[0] ELSE selectedNodes[1] END AS newTarget
CREATE (newPage:Page {pageId:pageCount + 1})-[:LINKS_TO]->(newTarget)
RETURN *
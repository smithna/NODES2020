// 03. Create new page
MATCH p=(source:Page {p:$p})-[:LINKS_TO]->(target:Page)
WITH collect(p) AS paths
WITH paths,
toInteger(floor(rand()*size(paths))) as randomIndex
WITH nodes(paths[randomIndex]) AS selectedNodes,
size(paths) as pageCount
WITH 
case when rand() < $p THEN selectedNodes[0] ELSE selectedNodes[1] END AS newTarget,
pageCount
CREATE (newSource:Page {pageId:pageCount + 1, p:$p})-[:LINKS_TO]->(newTarget)
RETURN *
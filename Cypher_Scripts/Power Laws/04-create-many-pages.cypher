// 04. Create many pages
call apoc.periodic.iterate(
"UNWIND range(0,4990) AS times RETURN times",
"MATCH p=(source:Page {p:$p})-[:LINKS_TO]->(target:Page)
WITH collect(p) AS paths
WITH paths,
toInteger(floor(rand()*size(paths))) as randomIndex
WITH nodes(paths[randomIndex]) AS selectedNodes,
size(paths) as pageCount
WITH pageCount, 
case when rand() < $p THEN selectedNodes[0] ELSE selectedNodes[1] END AS newTarget
CREATE (newPage:Page {pageId:pageCount + 1, p:$p})-[:LINKS_TO]->(newTarget)", 
{batchMode:'SINGLE', params:{p:$p}})
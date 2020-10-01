// 02. Create first pages
CREATE (p1:Page {pageId:1, p:$p})-[:LINKS_TO]->(p2:Page {pageId:2, p:$p}),
(p2)-[:LINKS_TO]->(p1)
RETURN *
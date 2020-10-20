// 02. Create first pages
CREATE (p1:Page {pageId:1})-[:LINKS_TO]->(p2:Page {pageId:2}),
(p2)-[:LINKS_TO]->(p1)
RETURN *
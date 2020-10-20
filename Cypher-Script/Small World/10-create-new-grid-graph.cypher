//10. Create new-grid graph
CALL gds.graph.create('new-grid', 'Person', {KNOWS:
     {orientation:"UNDIRECTED"}});
//06. Create GDS graph
CALL gds.graph.create('base-grid', 'Person', {KNOWS:
     {orientation:"UNDIRECTED"}});
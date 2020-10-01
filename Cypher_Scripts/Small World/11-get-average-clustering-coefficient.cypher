// 11. Get average clustering coefficient
CALL gds.localClusteringCoefficient.stats('new-grid')
YIELD averageClusteringCoefficient, nodeCount
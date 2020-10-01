// 07. Get average clustering coefficient
//06. Get average clustering coefficient
CALL gds.localClusteringCoefficient.stats('base-grid')
YIELD averageClusteringCoefficient, nodeCount
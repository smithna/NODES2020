// 08. Analyze all nodes shortest paths
CALL gds.alpha.allShortestPaths.stream('base-grid')
YIELD sourceNodeId, targetNodeId, distance
RETURN max(distance) AS maxDistance, 
     min(distance) AS minDistance, 
     avg(distance) AS avgDistance, 
     count(distance) AS pathCount;
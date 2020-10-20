// 06. Switch B to A iteratively
CALL apoc.periodic.commit(
'MATCH (p:BStrategy)-[:INTERACTS]-(a:AStrategy)
WITH DISTINCT p
MATCH (p)-[:INTERACTS]-(n)
WITH DISTINCT p, n
WITH p, SUM(CASE WHEN "AStrategy" in labels(n) 
                 THEN $aReward 
            END) AS aRewardSum, 
        SUM(CASE WHEN "BStrategy" in labels(n) 
                 THEN $bReward 
            END) AS bRewardSum
     WHERE aRewardSum >= bRewardSum
REMOVE p:BStrategy
SET p:AStrategy
RETURN count(*) LIMIT 1', {aReward:$aReward, bReward:$bReward})

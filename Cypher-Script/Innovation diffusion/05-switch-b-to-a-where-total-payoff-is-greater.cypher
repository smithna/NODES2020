//05. Switch B to A where total payoff is greater
MATCH (b:BStrategy)-[:INTERACTS]-(a:AStrategy)
WITH DISTINCT b
MATCH (b)-[:INTERACTS]-(n)
WITH b, SUM(CASE WHEN "AStrategy" in labels(n) 
                 THEN $aReward 
            END) AS aRewardSum, 
        SUM(CASE WHEN "BStrategy" in labels(n) 
                 THEN $bReward 
                 END) AS bRewardSum
     WHERE aRewardSum >= bRewardSum
REMOVE b:BStrategy
SET b:AStrategy
RETURN b